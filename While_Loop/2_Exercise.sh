# Write a shell script that asks the user for the number of lines 
# they would like to display from the /etc/passwd file and display those lines.

#!/bin/bash

#!/bin/bash

echo "Enter the number of lines to print: "
read line_number
count=0
while read -r line && [ $count -lt $line_number ]; 
do
    count=$((count + 1))
    echo "$count: $line"
done < /etc/passwd

