#! /bin/bash -x
function isPalindrome
{
	n=$1
	while [[ $n -gt 0 ]]
	do
		rem=$(($n%10))
		rev=$(((rev*10)+rem))
		n=$(($n/10))
	done
	if [ $rev -eq $1 ]
	then
	echo "$1 is palindrome and" `isPrime $1`
	else
	echo "$1 is not palindrome"
	fi
}

function isPrime
{
	flag=0
	for ((i=2; i<$(($1/2)) ;i++ ))
	do 
		if [ $(($1%i)) -eq 0 ]
		then
		flag=1
		break
		fi
	done
	if [ $flag -eq 0 ]
	then 
	echo   " prime number"
	else
	echo " not prime number"
	fi

}

echo "enter number"
read num1
isPalindrome $num1 

