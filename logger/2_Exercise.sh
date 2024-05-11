# Exercise 2:
# Modify the previous script so that it uses a logging function. 
# Additionally tag each syslog message with "randomly" and include the process ID. 
# Generate 3 random numbers.

#!/bin/bash
log() {
    local message=$1
    echo "$message"
    logger -p user.info -t randomly[$$] "$message"
}
generate_random_numbers() {
    local count=$1
    for ((i=1; i<=$count; i++)); do
        ran_num=$RANDOM
        log "Random number $i: $ran_num"
    done
}
generate_random_numbers 3
