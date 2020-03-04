#! /bin/bash

# test-integer

INT=-5

if [ -z $INT ]; then
	echo "There is Empty." >&2
#	exit 1
fi

if [ $INT -eq 0 ]; then
	echo "There is zero." 
else
	if [ $INT -lt 0 ]; then
		echo "There is negative." 
	else
		echo "There is positive." 
	fi
	if [ $(($INT%2)) -eq 0 ]; then
		echo "There is even." 
	else
		echo "There is odd." 
	fi
fi
