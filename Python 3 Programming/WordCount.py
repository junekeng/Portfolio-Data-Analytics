# DAT100 Midterm test
# Created by June Tan
# Created on May 20,2023
# Word count program


# Initializing
string = ""
count = 0
wordList = []
wordCount = []
wordDict = {}

# Prompt user to enter word. 
while True:
    string = input("Enter a word or % to end: ")
    count+=1
    
    if string=="%":
        count-=1
        break

    # Appending each word into a list
    wordList.append(string)

    # Count the occurence of words.
    # Assigning word as key and count as value in dictionary.
    for k in wordList:
        val = wordList.count(k)
        wordCount.append(val)

        for val in wordCount:
            wordDict[k] = val
            wordCount.remove(val)
            break

# Display results    
print("\nNumber of word entered is",count)
for k,val in wordDict.items():
    print(k, "appears", val, "time(s)")

print("\n==Program ends==")
