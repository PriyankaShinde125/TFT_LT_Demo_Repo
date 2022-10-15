#! /bin/bash -x

cnt=0
for ((i=10;i<100;i++))
do
	rem=$(($i%10))
	quo=$(($i/10))
	if [ $rem -eq $quo ]
	then
	arr[ $cnt ]=$i
	((cnt++))
	fi
done
echo "${arr[@]}"
