#!/bin/bash

read -p "Enter the file path: " file_path


if [ -f $file_path ]; then
	echo "File exists"
else
	echo "File doesn't exists"
fi

