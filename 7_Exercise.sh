# Exercise 7:
# Modify the previous script so that it accepts the 
# file or directory name as an argument instead of prompting the user to enter it.

#!/bin/bash
DATA=$1

if [ -f $DATA ] # The -f option will check if it is a file or not.
then
    echo "This is a file"
elif [ -d $DATA ] # The -d option will check if it is a directory or not.
then
    echo "This is a directory"
else
    echo "File or Directory do not exist"
fi