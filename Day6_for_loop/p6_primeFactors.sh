#! /bin/bash -x

echo "enter number"
read n
echo "Prime Factors are"
for (( i=2 ; i<=$n ;i++))
do
	if [ $((n%2)) -eq 0 ]
	then
		fact=2
		n=$((n/2))
	fi
done

echo $fact

for (( i=3 ; $((i*i)) <= n; i=$((i+2)) ))
do
	if [ $((n%i)) -eq 0 ]
	then
	if [ $fact -ne $i ]
	then
	echo $i
	fact=$i
	fi
	n=$((n/i))
	fi
done

if [[ $n -gt 2 && $n -ne $fact ]]
then 
	echo $n
fi

