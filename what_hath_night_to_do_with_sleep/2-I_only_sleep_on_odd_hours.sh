#!/bin/bash
if [ $1 -eq 0 ]
then
 echo "Heh?"
else
	if [ $(( $1 % 2 )) -eq 0 ]
		then
		echo "Heh?"
	else
		echo "Sleep time!"
	fi
fi
