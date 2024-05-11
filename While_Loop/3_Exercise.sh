# Exercise 3:
# Write a shell script that that allows a user to select an action from the menu. 
# The actions are to show the disk usage, show the uptime on the system, and show the users that are logged into the system. 
# Tell the user to enter q to quit. Display "Goodbye!" just before the script exits.
# If the user enters anything other than 1,2,3,or q,tell them that it is an "Invalid option."
# You can show the disk usage by using the df command. 
# To show the uptime, use the uptime command. 
# To show the users logged into the system, use the who command. 
# Print a blank line after the output of each command.

#!/bin/bash

echo "select 1 to Show disk usage: 
	select 2 show system uptime:
	select 3 You are logged into the system: "
read input

SYSINFO=$(df)
UP=$(uptime)
HOST=$(hostname)
if [ "$input" -eq 1 ]
then
	echo "$SYSINFO"
elif [ "$input" -eq 2 ]
then 
	echo "$UP"
elif [ "$input" -eq 3 ]
then
	echo "$HOST"
else
	echo "choose between these three numbers only"
fi