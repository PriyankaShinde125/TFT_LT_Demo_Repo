#! /bin/bash -x
arr=(-1 -3 4 6 5 -2)
echo ${arr[@]}
for (( i=0 ;i<6; i++ ))
do

	for (( j=$((i+1));j<6;j++ ))
	do
		for (( k=$((j+1)); k<6; k++ ))
		do
			sum=$((arr[$i] + arr[$j] + arr[$k]))
			if [ $sum -eq 0 ]
			then
			echo "${arr[$i]} ${arr[$j]} ${arr[$k]}"
			fi
		done
	done
done
