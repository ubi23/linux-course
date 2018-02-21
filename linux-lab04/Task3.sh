#!/bin/bash


check_directory() {
	# if argument is a directory
	if [ -d ${1} ];then
		# move into it
		echo "moving into $1"
		cd ${1}
	else # otherwise create it
		mkdir ${1}
	fi
}

check_directory newdirectory
