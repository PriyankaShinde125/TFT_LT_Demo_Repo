#! /bin/bash -x

#Extend the program to take a range of number as input and output the Prime
#Numbers in that range.


echo "enter range"
read n1
read n2
for (( i=$n1 ; i<=$n2 ; i++ ))
do
	flag=0
	for (( k=2 ; k<$i ; k++ ))
	do
		if [ $((i%k)) -eq 0 ]
		then
		flag=1
		fi
	done	
	 if [ $flag -eq 0 ]
        then
        echo $i
        fi
done
