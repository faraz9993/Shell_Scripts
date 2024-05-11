# Exercise 1:
# Write a shell script that loops through the /etc/passwd file one line at a time. 
# Prepend each line with a line number followed by a colon and then a space.

#!/bin/bash
line_number=0
while IFS= read -r line; do
    line_number=$((line_number + 1))
    echo "$line_number: $line"
done < /etc/passwd
