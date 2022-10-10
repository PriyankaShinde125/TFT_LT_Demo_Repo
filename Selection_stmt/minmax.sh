#! /bin/bash -x
max=100
min=900
i=1
while [[ $i -lt 6 ]]
 do
	num=$((RANDOM%900 + 100))
	echo $num
	if [[ $num -gt $max ]]
	then 
		max=$num
	fi
	if [[ $num -lt $min ]]
	then
		min=$num
	
	fi
	i=$(($i + 1))
done
echo "maximun number is" $max
echo  "minimum number is" $min
