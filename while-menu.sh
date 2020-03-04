#! /bin/bash

# while-menu

DELAY=3

while true; do
	clear
	cat <<- _EOF_
		Please Select
		
		1. Display System Information
		2. Display Disk Space
		3. Display Home Space Utiliaztion
		0. Quit
	_EOF_
	read -p "Enter Selection [0-3] > " 
	
	if [[ $REPLY =~ ^[0-3]$ ]]; then
		if [ $REPLY == 0 ]; then
			break
		elif [ $REPLY == 1 ]; then
			echo "System Information : $HOSTNAME"
			uptime
			sleep $DELAY
			continue
		elif [ $REPLY == 2 ]; then
			echo "Disk Space"
			df -h
			sleep $DELAY
			continue
		elif [ $REPLY == 3 ]; then
			echo "Home Space Utiliaztion"
			if [[ $(id -u) -eq 0 ]]; then
				echo "Home Space Utiliaztion "
				du -sh /home/*			
			else
				echo "Home Space Utiliaztion $USER"
				du -sh $HOME			
			fi			
			sleep $DELAY
			continue
		fi
	else
		echo "Invalid Entry"
		sleep $DELAY	
	fi
done
echo "Program terminatied."
