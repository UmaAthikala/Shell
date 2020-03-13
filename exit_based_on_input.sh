#!/bin/bash
#Write a shell script that accepts a file or directory name as an argument. Have the script report if it is a regular file, a directory, or other type of file. If it is a regular file, exit with a 0 exit status. If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.

INPUT_BUFFER=$1

if [ -d "$INPUT_BUFFER" ]
then 
	echo "The input is a directory"
	exit 1	

elif [ -f "$INPUT_BUFFER" ]
then 
	echo "The input is a regular file"
	exit 0
	
else
	echo "The input is a different type of file"
	exit 2
fi

