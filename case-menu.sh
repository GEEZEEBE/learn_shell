#! /bin/bash

# while-menu

clear
cat <<- _EOF_
	Please Select
	
	1. Display System Information
	2. Display Disk Space
	3. Display Home Space Utiliaztion
	0. Quit
_EOF_
read -p "Enter Selection [0-3] > " 

case $REPLY in
	0)
		echo "Program terminatied."
#		exit
		;;
	1)
		echo "System Information : $HOSTNAME"
		uptime
		;;
	2)
		echo "Disk Space"
		df -h
		;;
	3)
		echo "Home Space Utiliaztion"
		if [[ $(id -u) -eq 0 ]]; then
			echo "Home Space Utiliaztion "
			du -sh /home/*			
		else
			echo "Home Space Utiliaztion $USER"
			du -sh $HOME			
		fi
		;;
	*)
		echo "Invalid Entry"
#		exit 1
		;;
esac
