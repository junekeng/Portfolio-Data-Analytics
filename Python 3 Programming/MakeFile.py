# DAT100 Final test
# Created by June Tan on June 12 , 2023
# Question 1: Program to create and write into file 

# Initializing
fname = ""

# Prompt user to enter filename

while True:
    fname = input("Enter file name: ")
    if (fname==" "):
        print("File name cannot be empty")
            
    elif fname:
        fname = fname + ".txt"
        break

# Create file for write 
w = open(fname, "w")

# Prompt user to enter sentences
while True:
    line = input("Enter a sentence. Hit ENTER when done: ")
    w.writelines(line + "\n")
    if not line:
        break
w.close()
