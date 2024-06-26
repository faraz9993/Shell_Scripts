#Exercise 1:
# Write a shell script that consists of a function that display the number of files in the present working directory. 
# Name this function "file_count" and call it in your script. 
# If you use a variable in your function, remember to make it a local variable.
# Hint: The wc utility is used to count the number of lines, words, and bytes. 

#!/bin/bash
file_count() {
    local DATA=$(ls -1 | wc -l)
    echo "Number of files in the current directory are: $DATA"
}
file_count
