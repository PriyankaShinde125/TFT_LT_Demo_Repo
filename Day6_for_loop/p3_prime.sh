#! /bin/bash -x
#Write a program that takes a input and determines if the number is a prime.

flag=0
echo "enter number to check whether it is prime or not"
read n
for ((i=2; i<$((n/2)) ;i++ ))
do 
	if [ $((n%i)) -eq 0 ]
	then
	flag=1
	break
	fi
done
if [ $flag -eq 0 ]
then 
echo  $n "is prime number"
else
echo $n "is not prime number"
fi
