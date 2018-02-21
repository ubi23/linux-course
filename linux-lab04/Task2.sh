#!/bin/bash

# don't know how to comment this
cat help-read.txt | while read line;
do
	# for each line prints the number of words
	echo ${line} | wc -w 
done 
