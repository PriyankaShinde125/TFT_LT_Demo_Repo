#! /bin/bash -x
#2. Read a Number and Display the week day (Sunday, Monday,...)

echo "Enter number to display week day"
read n
case $n in
	1) echo "Monday" ;;
	2) echo "Tuesday" ;;
	3) echo "Wednesday" ;;
	4) echo "Thursday" ;;
	5) echo "Friday" ;;
	6) echo "Saturday" ;;
	7) echo "Sunday" ;;
esac
