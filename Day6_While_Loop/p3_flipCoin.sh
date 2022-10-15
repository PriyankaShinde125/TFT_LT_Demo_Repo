#! /bin/bash -x

wins=0
isHead=1
while [ $wins -ne 11 ]
do 
	toss=$((RANDOM%2))
	if [ $toss -eq $isHead ]
	then
	wins=$((wins+1))
	fi
echo $toss
	
done
echo  $wins
