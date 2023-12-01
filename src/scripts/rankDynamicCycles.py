###This is designed to rank the cycles of instructions
### input:
###     llfi.stat.prof.txt
### output:
###     
import sys
import itertools
inFile = sys.argv[1]
outFile = sys.argv[2]
N = int(sys.argv[3]) # The top N innstructions targeted

#read the input file and store all the data in a dictionary

instCycles = {}
def parse2Dic(lineString):
    key = lineString.split(' : ')[0]
    val = lineString.split(' : ')[1]
    #print (key + " " + val)
    instCycles[key] = val


toBeSkipped = 1
with open(inFile, 'r') as i:
    lines = i.readlines()
    for line in lines:
        if toBeSkipped:
            if 'total_cycle' in line:
                toBeSkipped = 0
            continue            
        parse2Dic(line)
# To sort the dictionary by the value
sorted_instCycles = sorted(instCycles, key=instCycles.get, reverse=True)
print(sorted_instCycles)
#Using islice() + items()
# To get the first N items in dictionary

topNInst = sorted_instCycles[:N]

#print("Top " + str(N) + " instructions are : \n" )
#print(topNInst)
        
with open(outFile, "w") as fp:
    for item in topNInst:
        fp.write("%s\n" % item)
    print("The top "+ str(N) + " instructions has been written to:" + outFile + " \n")
