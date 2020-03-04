#! /bin/bash

# test-integer

echo -n "Please enter an integer -> "
read int

if [[ "$int" =~ ^~?[0-9]+$ ]]; then
	if [ $int -eq 0 ]; then
		echo "There is zero." 
	else
		if [ $int -lt 0 ]; then
			echo "There is negative." 
		else
			echo "There is positive." 
		fi
		if [ $(($int%2)) -eq 0 ]; then
			echo "There is even." 
		else
			echo "There is odd." 
		fi
	fi
else
	echo "There is not an Integer." >&2
#	exit 1
fi


