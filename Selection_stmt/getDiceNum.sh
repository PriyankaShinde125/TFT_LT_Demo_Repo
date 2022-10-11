#! /bin/bash -x
dicenum1=$((RANDOM%6 + 1))
dicenum2=$((RANDOM%6 + 1))

addition=$(($dicenum1 +$dicenum2))

echo "addition of two dice numbers is" $addition

