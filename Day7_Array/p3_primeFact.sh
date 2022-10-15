#! /bin/bash -x

echo "enter number"
read n
counter=0
flag=0
echo "Prime Factors are"
for (( i=2 ; i<=$n ;i++))
do
	if [ $((n%2)) -eq 0 ]
	then
		fact[ $counter ]=2
		flag=1
		n=$((n/2))
	fi
done

if [ $flag -eq 1 ]
then 
((counter++))
fi

for (( i=3 ; $((i*i)) <= n; i=$((i+2)) ))
do
	if [ $((n%i)) -eq 0 ]
	then
	if [ $counter -gt 0 ]
	then
		if [ ${fact[$((counter-1))]} -ne $i ]
		then
		fact[ $counter ]=$i
		((counter++))
		fi
	else
		 fact[ $counter ]=$i
                ((counter++))

	fi
	  n=$((n/i))
	fi
done

if [[ $n -gt 2 && $n -ne ${fact[$((counter-1))]} ]]
then 
	fact[ $counter ]=$n
fi

echo ${fact[@]}
