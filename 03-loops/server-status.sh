#!/bin/bash

count=1

while [ $count -le 5 ]
do 
	echo "Checking server status..."
	uptime
	sleep 2
	((count++))
done
