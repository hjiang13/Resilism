# To count the error rates of fault injection results
# Results are classified to SDC/crash/benign
import sys
import json
import os
import difflib
import csv
from pathlib import Path
# Load data from /home/hjiang/Resilism/experiments/LULESH_FITrace_1229/topInst.txt

topInstFile = '/home/hjiang/Resilism/experiments/LULESH_FITrace_1229/topInst.txt'

#Store infomation into json format
FIInfo = []
errorStat = []
with open(topInstFile, 'r') as ifile:
    mylist = ifile.read().splitlines() 
    for line in mylist:
        fiindex = line
        resultPath = "/home/hjiang/Resilism/data/LULESH_FITrace_1229/lulesh-" + fiindex
        goldenFile = resultPath + "/llfi/baseline/element.prof.dat"
        progOutputPath = resultPath + "/llfi/prog_output/"
        
        # To parse all 30 FI instances to a list, listing [fiidex, fi_cycle, fi_bit, opcode, error_type]
        errorInfo = []
        errorInfo.append(fiindex) 
        for i in range(0,30):
            FIInfoInstance = []
            FIInfoInstance.append(fiindex)
            llfiStatInfo = resultPath + "/llfi/llfi_stat_output/llfi.stat.fi.injectedfaults.0-" + str(i) + ".txt"
            #parse llfiStatInfo and error type
            with open(llfiStatInfo, 'r') as sf:
                for line_ in sf:
                    fi_cycle = ''.join(line_.split("fi_cycle=")[1].split(',')[0])
                    fi_bit = ''.join(line_.split("fi_bit=")[1].split(',')[0])
                    fi_opcode = ''.join(line_.split("opcode=")[1].split('\n')[0])
                    FIInfoInstance.append(fi_cycle)
                    FIInfoInstance.append(fi_bit)
                    FIInfoInstance.append(fi_opcode)
            progOutputFile = progOutputPath + "element.0-" + str(i) + ".dat"
            progOutputFilePath = Path(progOutputFile )
            if progOutputFilePath.is_file():
                with open(goldenFile, 'r') as file1, open(progOutputFile, 'r') as file2:
                    file1_contents = file1.readlines()
                    file2_contents = file2.readlines()
                # compute the differences using the unified_diff method from difflib
                    differences = list(difflib.unified_diff(file1_contents, file2_contents))
                # print the differences 
                    if differences:
                        FIInfoInstance.append('SDC')
                    else:
                        FIInfoInstance.append('benign')

            else:
                FIInfoInstance.append('crash') 
            FIInfo.append(FIInfoInstance)

        



        errorInfo.append(fi_opcode)

        #Count error rate:
        lst = os.listdir(progOutputPath)
        number_uncrash = len(lst)
        number_crash = 30 - number_uncrash
        number_benign = number_uncrash
        for file in os.listdir(progOutputPath):
            outputFile = progOutputPath + file 
            with open(goldenFile, 'r') as file1, open(outputFile, 'r') as file2:
                file1_contents = file1.readlines()
                file2_contents = file2.readlines()
                # compute the differences using the unified_diff method from difflib
                differences = list(difflib.unified_diff(file1_contents, file2_contents))
                # print the differences 
                if differences:
                    number_benign = number_benign - 1   
        
        errorInfo.append(number_crash/30)
        errorInfo.append(number_benign /30)
        errorInfo.append(1- number_benign /30 - number_crash/30 )
        errorStat.append(errorInfo)

print(*errorStat,sep='\n')
field_name = ['fiindex', 'fi_opcode', 'crash', 'benign', 'SDC']
with open('/home/hjiang/Resilism/processed_data/FIInfo.csv', 'w') as f:
     
    # using csv.writer method from CSV package
    write = csv.writer(f)
     
    write.writerow(field_name)
    write.writerows(errorStat)
    

#convert to json
#errorInfo = json.dump(errorInfo)
#print(*FIInfo,sep='\n')
# to save a list to csv
fields = ['fiidex', 'fi_cycle', 'fi_bit', 'opcode', 'error_type']
with open('/home/hjiang/Resilism/processed_data/FIInfoInstance.csv', 'w') as f:
     
    # using csv.writer method from CSV package
    write = csv.writer(f)
     
    write.writerow(fields)
    write.writerows(FIInfo)
