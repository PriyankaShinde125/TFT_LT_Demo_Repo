#! /bin/bash -x
n1=$((RANDOM%90 + 10))
n2=$((RANDOM%90 + 10))
n3=$((RANDOM%90 + 10))
n4=$((RANDOM%90 + 10))
n5=$((RANDOM%90 + 10))

sum=`expr $n1 + $n2 + $n3 + $n4 + $n5`
average=`expr $sum / 5`

echo  "sum of five numbers is " $sum 
echo "average is " $average
