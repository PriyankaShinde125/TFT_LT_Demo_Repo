#! /bin/bash -x

#3. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...

echo "Enter number"
read inputNum
if [ $inputNum -eq 1 ]
then
echo "Unit"
elif [ $inputNum -eq 10 ]
then
echo "ten"
elif [ $inputNum -eq 100 ]
then 
echo "Hundred"
elif [ $inputNum -eq 1000 ]
then 
echo "Thousand"
fi

