#! /bin/bash -x

#Selection Practice Problems with if, elif and else
#Read a single digit number and write the number in word

inputNum=0
echo "Enter single digit number "
read inputNum
if [ $inputNum -eq 1 ]
then 
echo "One"
elif [ $inputNum -eq 2 ]
then 
echo "Two"
elif [ $inputNum -eq 3 ]
then
echo "Three"

elif [ $inputNum -eq 4 ]
then
echo "Four"

elif [ $inputNum -eq 5 ]
then
echo "Five"

elif [ $inputNum -eq 6 ]
then
echo "Six"

elif [ $inputNum -eq 7 ]
then
echo "Seven"

elif [ $inputNum -eq 8 ]
then
echo "Eight"

elif [ $inputNum -eq 9 ]
then
echo "Nine"

else
echo "Zero"
fi


