#! /bin/bash -x
declare -A dice
dice=( ['1']='0' ['2']='0' ['3']='0' ['4']='0' ['5']='0' ['6']='0' )
maxLimit=10
index=-1
function check
{
for ((i=1;i<=6;i++))
do
	if [ ${dice[$i]} -eq $maxLimit ]
	then
	index=$i
	break
	fi
done
}


function update
{
	rollDice=$1
	case $rollDice in
	1) dice[1]=$((${dice[1]}+1));;
 	2) dice[2]=$((${dice[2]}+1));;
 	3) dice[3]=$((${dice[3]}+1));;
 	4) dice[4]=$((${dice[4]}+1));;
	5) dice[5]=$((${dice[5]}+1));;
	6) dice[6]=$((${dice[6]}+1));;
	esac

}


while [ $index -lt 0 ]
do
	check
	roll=$((RANDOM%7))
	update $roll
done

for i in "${!dice[@]}"
do
echo "$i=${dice[$i]}"
done
