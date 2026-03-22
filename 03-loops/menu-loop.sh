#!/bin/bash

while true
do 
	echo "----- MENU -----"
	echo "1. Show Date"
	echo "2. Show Current Directory"
	echo "3. Show Logged-in User"
	echo "4. Exit"

	read -p "Choose option: " choice

	case $choice in 
		1) date ;;
		2) pwd ;;
		3) whoami ;;
		4) echo "Exiting..." ; break ;;
		*) echo "Invalid option" ;;
	esac

	echo ""
done
