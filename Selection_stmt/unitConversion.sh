#! /bin/bash -x

#Unit Conversion
#a. 1ft = 12 in then 42 in = ? ft

	inPerFt=12
	totalft=`expr 42 / $inPerFt`
	echo "42 in = " $totalft "ft"

#b. Rectangular Plot of 60 feet x 40 feet in meters
# 1 sqft = 0.092903 sqmt


	length=60
	width=40
	area=`expr $length \* $width`
	areainmeter=`echo $area | awk '{print ($1*0.092903)}'`
	echo 'area in meter square= ' $areainmeter

#c. Calculate area of 25 such plots in a
# 1 sqmt = 0.000247 acre

	areainacres=`echo $areainmeter |awk '{print ($1*0.000247)}'`
	totalarea=`echo $areainacres |awk '{print ($1*25)}'`
	echo 'area of 25 such plots in acres is' $totalarea
