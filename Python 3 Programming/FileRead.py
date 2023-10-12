# DAT100 Final test
# Created by June Tan on June 12 , 2023
# Question 2: Function to read file and return dictionary as value

# Initializing 
nDict = dict()

# Defining function FileName() to read file in parameter 
def FileRead(fileName):
    new_fileName = str((fileName) + ".txt")
    f = open(new_fileName, "r")

    i=1
    for i in range (1, i+1):
        for indata in f:
            indata = indata.upper()
            nDict[i] = indata  #Create dictionary with line# as index and line as value 
            i+=1
        return (nDict)

    f.close()

    
