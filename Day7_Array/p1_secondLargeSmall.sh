#! /bin/bash -x
declare -a randomArray
i=0
while [ $i -lt 10 ]
do
	randomArray[ $i ]=$((RANDOM%900 + 100))
	((i++))
done
firstMax=${randomArray[0]}
secondMax=${randomArray[0]}
firstMaxIndex=0

firstSmall=${randomArray[0]}
secondSmall=${randomArray[0]}
firstSmallIndex=0

for (( i=0; i<=10; i++))
do
	if  [ ${randomArray[$i]} -gt $firstMax ]
	then
		firstMax=${randomArray[$i]}
		firstMaxIndex=$i
	fi
        if  [ ${randomArray[$i]} -lt $firstSmall ]
        then
                firstSmall=${randomArray[$i]}
                firstSmallIndex=$i
        fi

done
for (( i=0; i<=10; i++))
do
        if  [[ $i -ne $firstMaxIndex && ${randomArray[$i]} -gt $secondMax ]]
        then
                secondMax=${randomArray[$i]}
        fi
        if  [[ $i -ne $firstSmallIndex && ${randomArray[$i]} -lt $secondSmall ]]
        then
                secondSmall=${randomArray[$i]}
        fi

done

echo  ${randomArray[@]}
echo "-----------without sorting-----------"
echo "second largest number is $secondMax"
echo "second small numer is $secondSmall"


j=0
while [ $j -le 10 ]
do
for (( i=0; i<10; i++))
do
        if  [[ ${randomArray[$i]} -gt ${randomArray[$((i+1))]} ]]
        then
		temp=${randomArray[$i]}
                randomArray[ $i ]=${randomArray[$((i+1))]}
		randomArray[ $((i+1)) ]=$temp
        fi

done
        ((j++))
done


echo "-----------------with sorting-------------"
echo ${randomArray[@]}
echo "second Larget number is ${randomArray[9]}"
echo "second smallest number is ${randomArray[2]}"


