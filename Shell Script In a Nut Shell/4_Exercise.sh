# Exercise 4:
# Write a shell script to check to see if the file "/etc/shadow" exists. 
# If it does exist, display "Shadow passwords are enabled." 
# Next, check to see if you can write to the file. 
# If you can, display "You have permissions to edit /etc/shadow." 
# If you cannot, display "You do NOT have permissions to edit /etc/shadow."


#!/bin/bash
if [ -e "/etc/shadow" ]; # The -e option will check if a file exists or not. 
then    
    echo "Shadow passwords are enabled."
       if [ -w "/etc/shadow" ]; # The -w option will check if a file is writable or not. 
       then    
        echo "You have permissions to edit /etc/shadow."
       else
        echo "You do NOT have permissions to edit /etc/shadow."
    fi
else
    echo "/etc/shadow does not exist."
fi