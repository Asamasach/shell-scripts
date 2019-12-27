#!/usr/bin/bash

# get the CPU LOAD AVG from the file
CPU_LOAD=$(cat /proc/loadavg | awk '{print $1}')
CPU_LOAD=$(echo "100 * $CPU_LOAD" | bc -l);
sleep 5

# being sure about CPU LOAD AVG from the file
CPU_LOAD=$(cat /proc/loadavg | awk '{print $1}')
CPU_LOAD=$(echo "100 * $CPU_LOAD" | bc -l);

# Check if the load average is more than threshold
if (( $(echo "$CPU_LOAD >= 150" |bc -l) )); then
#Do sth
fi
