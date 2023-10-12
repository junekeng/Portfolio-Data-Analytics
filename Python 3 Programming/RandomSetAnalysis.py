# DAT100 Final Test
# Created by June Tan on June 13, 2023
# Question 4b: Program to generate two sets of 300 unique int

import GetRandom as r


set1 = set()
set2 = set()

# Generating set1
while True:
    a =  r.getRandom()
    set1.add(a)
    
    if(len(set1)==300):
        break

# Generating set2
while True:
    b =  r.getRandom()
    set2.add(b)
    
    if(len(set2)==300):
        break
    
# Deriving number of elements that are the same in both sets.
num = len(set1&set2)

# Display the result
print ("The number of elements that are the same in both sets: ", num)


    

    
    
