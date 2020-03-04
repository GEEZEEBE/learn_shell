#! /bin/bash

# test-string

ANSWER=maybe

if [ -z "$ANSWER" ]; then
	echo "There is no answer." >&2
#	exit 1
fi

if [ "$ANSWER" == "yes" ]; then
	echo "There is Yes." 
elif  [ "$ANSWER" == "no" ]; then
	echo "There is NO."
elif  [ "$ANSWER" == "maybe" ]; then
	echo "There is Maybe."
else 
	echo "There is Unknow."
fi

