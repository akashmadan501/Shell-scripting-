#!/bin/bash

read -p "Enter the number: " num

if [ $num -gt 0 ]; then
	echo "Number is positive"
else
	echo "Number is zero or negative"
fi
