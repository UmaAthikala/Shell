#!/bin/bash
#Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. Also perform an ls command against the file or directory with the long listing option.
#Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.


for INPUT_BUFFER in $@
do

	if [ -d "$INPUT_BUFFER" ]
	then 
		echo "The input ${INPUT_BUFFER} is a directory"
		LIST_OUTPUT=$(ls -l ${INPUT_BUFFER})
		echo "${LIST_OUTPUT}"
	elif [ -f "$INPUT_BUFFER" ]
	then 
		echo "The input ${INPUT_BUFFER} is a regular file"
		LIST_OUTPUT=$(ls -l ${INPUT_BUFFER})
		echo "${LIST_OUTPUT}"
	else
		echo "The input is ${INPUT_BUFFER} a different type of file"
	fi
done

