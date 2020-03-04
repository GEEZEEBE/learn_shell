#! /bin/bash

# test-file expression

FILE=~/.viminfo

if [ -e "$FILE" ]; then
	if [ -f "$FILE" ]; then
		echo "$FILE is regular file."
	fi
	if [ -x "$FILE" ]; then
		echo "$FILE is executale."
	fi
	if [ -d "$FILE" ]; then
		echo "$FILE is a directory."
	fi
	if [ -r "$FILE" ]; then
		echo "$FILE is readable."
	fi
	if [ -w "$FILE" ]; then
		echo "$FILE is writable."
	fi
else 
	echo "$FILE does not exit."
#	exit 1;
fi

#exit
