#!/bin/bash
message="$1" 
sex="$2" 
address="$3" 
filename=$(echo $message | cut -d" " -f1)
filename="$filename.m4a" 
case $sex in
   "m") say -v Alex -o $filename $message;;
   "f") say -v Kathy -o $filename $message;;
   "x") say -v Zarvox -o $filename $message;;
esac
scp "$filename" "admin@$address:/var/www/html"
echo "Listen to the message on http://$address/$filename"
