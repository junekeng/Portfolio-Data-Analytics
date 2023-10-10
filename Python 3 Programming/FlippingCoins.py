# DAT100 Midterm test
# Created by June Tan
# Created on May 19, 2023
# Program to simulate occurrences of combinations of coins toss

import random

# Initializing
val=0
combiList = []
combiCount = []
vDict = {}
n=0
c=0

# Prompt user to enter number of times coins are flipped
flips = input("\nHow many times would you like to flip coins: ")

flips = int(flips)

# Using random number generator to determine coin combinations;
# 1 denotes Head, 2 denotes Tail
while n < flips:
    combi = ''
    for c in range (1, 3):
        headtail = random.randint(1,2)
        combi+=str(headtail)
        
    # Sort combinations into list
    if combi=='11':
        combiList.append(combi)
    elif combi=='22':
        combiList.append(combi)
    elif combi=='12':
        combiList.append(combi)
    else:
        combiList.append('12') #for 1T1H as both are considered same 
                        
    n+=1

#Debug:
#print("list", combiList)
            
# Assign combination as key, and count as value
# Count the occurence of each combination.
for k in combiList:
    val = combiList.count(k)
    combiCount.append(val)

    for val in combiCount:
        vDict[k] = val
        combiCount.remove(val)
        break

#Debug:
#print(vDict.items())

# Print results
print("\nH=Head T=Tail")
print("\nCombination: Number of times combinations appears")
print("2H  :", vDict.get('11'))
print("2T  :", vDict.get('22')) 
print("1H1T:", vDict.get('12'))
