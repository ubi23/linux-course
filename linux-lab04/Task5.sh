#!/bin/bash


# check if number of parameters is less then 1
if [  "$#" -lt 1 ];then
	echo "I am exiting" 
	# if parameters are less than 1 exit with 1
	exit 1
else
	# for each argument supllied
	for var in "$@"
	do
		# if an argument is not a a file
		if [ ! -e $var ];then
			echo "I am exiting because it is not a file"
			# exit with 2
			exit 2
		fi
	done
fi


# decode a string in base64
process() {
	echo ${1} |base64 -d
}

# for each file of the arguments supplied
for FILE in $@
do
	# get the first line 
	first_line=$(head -1 $FILE)
	# get the last line 
	last_line=$(tail -1 $FILE)
	# decode the first and last lines
	process ${first_line}
	process ${last_line}

done


# exit successfully
exit 0



