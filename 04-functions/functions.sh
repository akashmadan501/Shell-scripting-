#!/bin/bash

echo "$1 is the main argument passed to the script"


#define function

install_package() {

	echo "$1 is the local argument of function install_package()"

	sudo apt-get install 
}

install_package docker.io  ##function call
