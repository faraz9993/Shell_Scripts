# Exercise 2:
# Write a script that renames files based on the file extension. 
# The script should prompt the user for a file extension. 
# Next, it should ask the user what prefix to prepend to the file name(s). 
# By default the prefix should be the current date in YYYY­MM­DD format. 
# So, if the user simply presses enter the date will be used. 
# Otherwise, whatever the user entered will be used as the prefix. 
# Next, it should display the original file name and the new name of the file. 
# Finally, it should rename the file.

#!/bin/bash
echo "Enter the file extention: "
read EXTENTION
echo "Enter the prefix: " 
read PREFIX

for all in *."$EXTENTION"; 
do
    mv $all $(date "+%Y-%m-%d")-$all
done