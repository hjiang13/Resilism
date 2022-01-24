#!/usr/bin/python

import sys
import os
import getopt
import time
import random
import signal
import subprocess

currdir = "."
#progbin = currdir + "/home/veloc/CoMD/bin/CoMD-openmp"
progbin = "/home/veloc/CoMD/bin/CoMD-openmp"
pinbin = "../pin-v3.5/pin"
instcategorylib = "../pin-v3.5/source/tools/pinfi/obj-intel64/instcategory.so"
instcountlib = "../pin-v3.5/source/tools/pinfi/obj-intel64/instcount.so"
filib = "../pin-v3.5/source/tools/pinfi/obj-intel64/faultinjection.so"
#inputfile = currdir + "/inputs/input.2048"
outputdir = currdir + "/prog_output/"
basedir = currdir + "/baseline/"
errordir = currdir + "/error_output/"

if not os.path.isdir(outputdir):
  os.mkdir(outputdir)
if not os.path.isdir(basedir):
  os.mkdir(basedir)
if not os.path.isdir(errordir):
  os.mkdir(errordir)

timeout = 5000

optionlist = [ ]

def execute( execlist):
	#print "Begin"
	#inputFile = open(inputfile, "r")
  global outputfile
  print (' '.join(execlist))
  #print outputfile
  outputFile = open(outputfile, "w")
  p = subprocess.Popen(execlist, stdout = outputFile)
  elapsetime = 0
  while (elapsetime < timeout):
    elapsetime += 1
    time.sleep(1)
    #print p.poll()
    if p.poll() is not None:
      print ("\t program finish", p.returncode)
      print ("\t time taken", elapsetime)
      #outputFile = open(outputfile, "w")
      #outputFile.write(p.communicate()[0])
      outputFile.close()
      #inputFile.close()
      return str(p.returncode)
  #inputFile.close()
  outputFile.close()
  print ("\tParent : Child timed out. Cleaning up ... ")
  p.kill()
  return "timed-out"
	#should never go here
  sys.exit(syscode)


def main():
  #clear previous output
  global run_number, optionlist, outputfile
  outputfile = basedir + "/golden_output"
  execlist = [pinbin, '-t', instcategorylib, '--', progbin]
  execlist.extend(optionlist)
  execute(execlist)
  IPs = []
  with open ('/home/veloc/pin-v3.5/source/tools/pinfi/cmp.CoMD.txt') as fi:
      for line in fi:
          IPs.append(line)
  for i in range (len(IPs)):        
    targetInsIP = IPs[i]
    print(targetInsIP + '\n')  
    #creat a pin.data.instselector.txt
    with open('/home/veloc/pin-v3.5/source/tools/pinfi/pin.data.instselector.txt', 'w') as fw:
      fw.write(targetInsIP) 
    # baseline
    fw.close()
    outputfile = basedir + "/golden_output"
    execlist = [pinbin, '-t', instcountlib, '--', progbin]
    execlist.extend(optionlist)
    execute(execlist)
    # fault injection
    for index in range(0, run_number):
        outputfile = outputdir + "/outputfile-" +str(targetInsIP)[0:6]+ "-" +str(index)
        errorfile = errordir + "/errorfile-"+str(targetInsIP)[0:6] + "-"+str(index)
        execlist = [pinbin, '-t', filib, '-fioption', 'AllInst', '--', progbin]
        execlist.extend(optionlist)
        ret = execute(execlist)
        if ret == "timed-out":
            error_File = open(errorfile, 'w')
            error_File.write("Program hang\n")
            error_File.close()
        elif int(ret) < 0:
            error_File = open(errorfile, 'w')
            error_File.write("Program crashed, terminated by the system, return code " + ret + '\n')
            error_File.close()
        elif int(ret) > 0:
            error_File = open(errorfile, 'w')
            error_File.write("Program crashed, terminated by itself, return code " + ret + '\n')
            error_File.close()

if __name__=="__main__":  
  global run_number
  assert len(sys.argv) == 2 and "Format: prog fi_number"
  run_number = int(sys.argv[1])

  main()
