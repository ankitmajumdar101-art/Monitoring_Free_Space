#!/bin/bash

#Monitoring the free fs space disk

FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda3" | awk '{print $5}' | tr -d %)

if [[ $FU -gt 80 ]]
then
        echo "Warnning, disk space is low"
else
        echo "All good disk space use $FU%"
fi
