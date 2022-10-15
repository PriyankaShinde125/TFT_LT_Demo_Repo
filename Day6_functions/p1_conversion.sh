#! /bin/bash -x

freezPointC=0
boilPointC=100

freezPointF=32
boilPointF=212

degF=0
degC=0

function degreeToF()
{
	read degC
	if [[ $degC -gt $freezPoint && $degC -lt $boilPoint ]]
	then	
	degF=`echo $degC | awk '{print ($1*9/5+32) }'`
	else
	echo "temperature not within range"
	fi
	echo $degC "C to $degF F"
	
}

function fToDegree()
{
        read degF
        if [[ $degF -gt $freezPointF && $degF -lt $boilPointF ]]
        then
        degC=`echo $degF | awk '{print ($1-32)*5/9 }'`
        else
        echo "temperature not within range"
        fi
        echo $degF "F to " $degC "C"

}
echo  "select option"
echo "1 - convert degree to Farenheit"
echo "2 - convert farenheit to degree"
read ch
case $ch in
	1) degreeToF;;
	2) fToDegree;;
esac
