#! /bin/bash -x

#Enter 3 Numbers do following arithmetic operation and find the one that
#is maximum and minimum
#1. a + b * c      3. c + a / b
#2. a % b + c      4. a * b + c

echo "Enter three numbers"
read a
read b
read c
n1=$((a + b * c))
n2=$((a % b + c))
n3=$((c + a / b))
n4=$((a * b + c))

echo $n1 $n2 $n3 $n4
if [[ $n1 -gt $n2  && $n1 -gt $n3 && $n1 -gt $n4 ]]
then 
echo "Maximum is "$n1
elif [[ $n2 -gt $n1  && $n2 -gt $n3 && $n2 -gt $n4 ]] 
then 
echo "Maximun is " $n2
elif [[ $n3 -gt $n1  && $n3 -gt $n2 && $n3 -gt $n4 ]]
then 
echo "Maximun is " $n3
elif [[ $n4 -gt $n1  && $n4 -gt $n2 && $n4 -gt $n3 ]]
then
echo "Maximun is " $n3
fi

if [[ $n1 -lt $n2  && $n1 -lt $n3 && $n1 -lt $n4 ]]
then
echo "Minimum is "$n1
elif [[ $n2 -lt $n1  && $n2 -lt $n3 && $n2 -lt $n4 ]]
then
echo "Minimun is " $n2
elif [[ $n3 -lt $n1  && $n3 -lt $n2 && $n3 -lt $n4 ]]
then
echo "Minimun is " $n3
elif [[ $n4 -lt $n1  && $n4 -lt $n2 && $n4 -lt $n3 ]]
then
echo "Minimun is " $n3
fi
