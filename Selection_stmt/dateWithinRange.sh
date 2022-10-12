#! /bin/bash -x

echo  'enter day'
read day
echo 'enter month'
read month
if [[($day -gt 20 && $month -lt 6 && $month -ge 3) || ($day -lt 20 && $month -le 6 && $month -gt 3)]]
then
 echo 'true'
else 
echo 'false'
fi
