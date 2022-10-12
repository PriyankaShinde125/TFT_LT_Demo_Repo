#! /bin/bash -x

#Read a Number and Display the week day (Sunday, Monday,...)

echo "Enter number for weekday"
read inputNum
if [ $inputNum -eq 1 ]
then 
echo "Sunday"
elif [ $inputNum -eq 2 ]
then 
echo "Monday"
elif [ $inputNum -eq 3 ]
then
echo "Tuesday"
elif [ $inputNum -eq 4 ]
then 
echo "Wednesday"
elif [ $inputNum -eq 5]
then 
echo "Thursday"
elif [ $inputNum -eq 6 ]
then
echo "Friday"
elif [ $inputNum -eq 7 ]
then
echo "Saturday"
fi
