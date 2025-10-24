#Create a function to check system resource usage: Print CPU and Memory usage using top or free commands.

#!/bin/bash

resource_usage() {
    # CPU usage using top
    CPU=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}')  # user + system
    # Memory usage using free
    MEM=$(free | awk '/Mem/ {printf "%.2f", $3/$2 * 100}')

    echo "CPU usage: $CPU%"
    echo "Memory usage: $MEM%"
}

resource_usage
