# DAT100 Final Test
# Created by June Tan on June 13, 2023
# Question 4a: Create module with function getRandom()

import random

def getRandom():
    val = int(random.random() * 1000) + 100
    return val
