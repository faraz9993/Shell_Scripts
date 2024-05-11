# Exercise 6:
# Write a shell script that prompts the user for a name of a file or directory 
# and reports if it is a regular file, 
# a directory, or other type of file. 
# Also perform an ls command against the file or directory with the long listing option.

#!/bin/bash
echo "Enter the name of file or directory"
read DATA

if [ -f $DATA ] # The -f option will check if it is a file or not.
then
    echo "This is a file"
elif [ -d $DATA ] # The -d option will check if it is a directory or not.
then
    echo "This is a directory"
else
    echo "File or Directory do not exist"
fi