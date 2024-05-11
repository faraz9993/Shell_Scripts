# Exercise 8:
# Modify the previous script to accept an unlimited number of files and directories 
# as arguments. Hint: You'll want to use a special variable.

#!/bin/bash
for DATA in "$@"; do
    if [ -f "$DATA" ]; then
        echo "$DATA This is a file."
    elif [ -d "$DATA" ]; then
        echo "$DATA is a directory"
    else
        echo "$DATA does not exist"
    fi
done
