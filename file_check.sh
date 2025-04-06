#!/bin/bash

#check if exactly one argument is provided 
# $# is the count of arguments 
# $0 is the script name 

if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi


#use $1 directly for checks and output for clarity 
#No need to assign it to a seperate 'filename' variable 


#check if the path exists 
if[ -e "$1"]; then
	#Path exists, now check its type 
	if[-f "$1"]; then 
		# It is a regular file
		echo "$1 is a regular file."
	elif [-d "$1"]; then
		# It is a directory 
		echo "$1 is a directory."
	else 
	
		# It exists but is not a regular file or directory 
		echo "$1 exists but is not a regular file or directory."
	fi
else
	echo "$1 does not exist."

fi
