#!/bin/bash
filepath="$1" 
while read -r line
do
	if [[ "$line" =~ "HEAD" ]]
	then
    echo "$line"
	fi
done < "$filepath"
