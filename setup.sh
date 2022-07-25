#!/bin/bash

echo "all params $*"
echo "number of params: $#"

for param in $*
 do
	if [ -d "$param" ]
	then
		echo "executing scripts in the config folder"
		ls -l "$param"
	fi	
 	echo $param
 done

sum=0
while true
 do
 	read -p "enter a score : " score

	if [ "$score" == "q" ]
	then
		echo "total score: $sum"
		break
	fi
	sum=$(($sum+$score))
		
 done	 
