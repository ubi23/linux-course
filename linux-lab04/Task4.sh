#!/bin/bash



is_file_directory() {
	
	# for each file of the arguments supplied
	for var in "$@"
	do
		# if it is a directory	
		if [ -d $var ];then
			echo "$var is a directory and it exists"
		elif [ -e $var ];then # if it is a file
			echo "$var is a file and it exists"
		else # it is neither a file nor a directory and it doesn't exist
			echo "$var does not exist"
		fi

	done


}

is_file_directory Task1.sh newdirectory gsadfuighsdfui
