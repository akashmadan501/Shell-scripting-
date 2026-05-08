#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please pass the file-name as an argument"
	echo "Usage: ./if_file_exists.sh <file_path>"
	exit 1
fi


if [ -f $1 ]
then
	echo "file exists"
else
	echo "file doesn't exists"
fi
