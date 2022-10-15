#! /bin/bash -x

#Write a program that takes a command-line argument n and prints a table of the
#powers of 2 that are less than or equal to 2^n.

echo "Enter a number"
read n
temp=1
i=1
while [ $i -le $n  ]
do
	temp=$((temp*2));
	echo $temp 
	i=$((i+1))
done
