#! /bin/bash -x

#Write a program that computes a factorial of a number taken as input.
#5 Factorial – 5! = 1 * 2 * 3 * 4 * 5


echo "Enter number to find factorial"
read  n
factorial=1
for (( i=1;i<=n;i++))
do 
factorial=$((factorial*i))
done
echo "factorial of $n = $factorial"
