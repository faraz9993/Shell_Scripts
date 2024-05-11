# Exercise 1:
# Write a shell script that displays one random number to the screen 
# and also generates a syslog message with that random number. 
# Use the "user" facility and the "info" facility for your messages.
# Hint: Use $RANDOM

#!/bin/bash
ran_num=$RANDOM
echo "Random number: $ran_num"
logger -p user.info "Random number generated: $ran_num"

# -p is for priority

# run the scrip using command: ./1_Exercise.sh