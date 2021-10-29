#!/bin/bash

clear
while true
do
read -p "Enter a grade >> " grade
if [ $grade -ge 0 ] && [ $grade -le 100 ];
then
break
else
echo "Invalid grade. Try again"
fi
done

if [ $grade -ge 90 ] && [ $grade -le 100 ];
then
echo "You got A"
elif [ $grade -ge 80 ] && [ $grade -le 89 ];
then
echo "You got B"
elif [ $grade -ge 70 ] && [ $grade -le 79 ];
then
echo "You got C"
elif [ $grade -ge 60 ] && [ $grade -le 69 ];
then
echo "You got D"
else
echo "You got an F"
fi
