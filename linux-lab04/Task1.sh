#!/bin/bash

for FILE in *
do
	# check if a file is empty
	if [ ! -s ${FILE} ];then
		# ask to remove it
		echo "File ${FILE} is empty, do you want to delete it? (y/n) "
		# store the response of the user into response variable
		read response
		# check if response is yes
		if [ "${response}" = "y" ] || [ "${response}" = "Y" ];then
			# remove the file
			rm ${FILE}
		fi
	fi
done


