#! /bin/bash -x

#Write a program that takes a command-line argument n and prints the nth harmonic

number. Harmonic Number is of the form
harmonic=1
echo "Enter a number"
read n
for (( i=2 ;i<=$n ;i++))
do
	harmonic=`echo $harmonic $i| awk '{print $1+(1/$2)}'`
done
echo "$n th harmonic number is" $harmonic
