#!/usr/bin/python3
import re
cmpList= []
headList = []
conditionalCmpList =[]
with open("is.S_i.dot", 'r') as f_in:
    for line in f_in:
        for cmp in re.findall('40.....:.cmp ', line):
        #if (re.search('40.....: cmp ', line)):
            print(line)
            cmpList.append(cmp[0:6])
            headList.append(line[3:9])
print(cmpList)
with open('cmp.is.S.txt', 'w') as f_out: 
    for l in headList:
        string = "\"" + l + "\" ->"
        print(string)
        countcmp =[]
        with open("is.S_i.dot", 'r') as f_in: 
            for line in f_in:
                if (re.search(string , line)):
                    countcmp.append(l)
            print (countcmp)
            if (len(countcmp) >1):
                print ( cmpList[(headList.index(l))], file=f_out)
            