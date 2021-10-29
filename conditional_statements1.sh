#!/bin/bash


clear

read -p "Enter a number >> " num1
read -p "Enter another number >> " num2

if [ $num1 -gt $num2 ];
then
echo "$num1 is greater than $num2"
elif [ $num1 -eq $num2 ]; 
then
echo "$num1 is equal to $num2"
else 
echo "$num1 is definitely NOT greater than $num2"
fi

sleep 5
clear

echo "1. House"
echo "2. Computer"
echo "3. Printer"

read -p "Select one [1-3] >> " word


if [ $word -eq 1 ];
then
echo "You have selected House"
elif [ $word -eq 2 ];
then
echo "You have selected Computer"
else
echo "You have selected Printer"
fi  




#      -gt -> greater than
#      -lt -> less than
#      -le -> less or equal to
#      -ge -> greater or equal to
#      -eq -> equal to
#      -ne -> not equal to


