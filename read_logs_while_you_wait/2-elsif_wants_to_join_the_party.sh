#!/bin/bash
filepath="$1" 
heads=0
gets=0
while read -r line
do
	if [[ "$line" =~ "HEAD" ]]
	then
	heads=$((heads + 1))
	elif [[ "$line" =~ "GET" ]]
	then
	gets=$((gets + 1))
	fi
done < "$filepath"
echo "$heads"
echo "$gets"
