# DAT100 Final test
# Created by June Tan on June 12 , 2023
# Question 3: Program to get and return value of dictionary 

# Import module and initializing 
import FileRead as f

new_dict = dict()

# Defining function GetValue()
def GetValue(name_dict, key_dict):   

    new_dict = f.FileRead(name_dict) #Using previously created dictionary 

    try:
        return(new_dict[key_dict])
    except:
        return("!!!None!!!")

    


    
