#!/bin/bash
#trying if and if-else 
if [ -e /etc/shadow ]
then
	echo "Shadow passwords are enabled"
	if [ -w /etc/shadow ]
	then
		echo "you have permisssions to edit /etc/shadow"
	else
		echo "you do NOT have permissions to edit /etc/shadow"
	fi
fi
