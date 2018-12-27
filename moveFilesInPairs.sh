#!/bin/sh



rem=$(($# % 2))
if [ $rem -ne 0 ];
then
	echo "Error:  Must have an even number of arguments (2 minimum)"
	exit 1
else
	while [ $# -gt 0 ]
	do			
		if [ ! -e "$1" ];
			then
				echo "File $1 non-existent, so it could not be moved."
				exit 1
		elif [  ! -d "$2" ];
			then		
				echo "subdirectory ./$2 non-existent. File $1 not moved."
				exit 1
		else
			mv $1 $2
			echo "File $1 moved to subdirectory ./$2"

		fi
		shift 2
	done
fi
exit 0




