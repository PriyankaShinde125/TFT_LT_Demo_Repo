#! /bin/bash -x
#4. Write a program that takes User Inputs and does Unit Conversion of
#different Length units
#1. Feet to Inch 3. Inch to Feet
#2. Feet to Meter 4. Meter to Feet
echo "Enter Length to convert"
read len
echo "1 - Feet to inch"
echo "2 - Inch to feet"
echo "3 - feet to meter"
echo "4 - meter to feet"
read ch

case $ch in 
	1) echo  $len "Feet = " $((len * 12)) " inch " ;;
	2) echo $len "Inches =" $((len / 12)) "Feet" ;;
	3) echo $len "Feet = " `echo $len | awk '{print ($1*0.304)}'` "Meter";;
	4) echo $len "Meter = "`echo $len | awk '{print ($1*3.28)}'` "Feet ";;		
esac
