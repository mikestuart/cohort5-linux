#!/bin/bash

clear
echo "Printing numbers from 1 to 10:"
echo "------------------------------"
for number in $(seq 1 10)
do
echo $number
done
echo "------------------------------"

sleep 0
clear
echo "Printing even numbers from 1 to 20:"
echo "-----------------------------------"
for number in $(seq 1 20)
do
if [ $((number % 2)) == 0 ];
then
echo $number
fi
done
echo "-----------------------------------"

sleep 0
clear
echo "Printing odd numbers from 1 to 20:"
echo "-----------------------------------"
for number in $(seq 1 20);
do
if [ $((number % 2)) == 1 ];
then
echo $number
fi
done
echo "-----------------------------------"

sleep 0
clear

users=()
read -p "How users do you want to add? >> " number_of_users
echo "Ok, let's go ahead and add $number_of_users users"
for index in $(seq $number_of_users)
do
read -p "User number # $index >> " user
users[index]=$user
done

echo ""
echo "Adding users to queue... Wait"
sleep 3
clear
userCounter=1
for user in "${users[@]}"
do
echo "User # $userCounter:"
echo "--------------------"
echo "Pulling user $user from the queue to add him/her to the system..."
read -p "Enter comment >> " comment
read -p "Enter expiration date [yyyy-mm-dd] >> " expiration_date
sudo useradd $user -c "$comment" -e "$expitation_date"
((userCounter++))
echo ""
done
echo ""
echo "Adding users to the system...wait!"
sleep 4

sleep 5
clear
echo "Confirming that users ${users[@]} have been added.."
sleep 2
clear
echo "--------------------------------------------------------------"
echo "                        ADDED USERS                           "
echo "--------------------------------------------------------------"
tail -$number_of_users ../users
echo "--------------------------------------------------------------"

sleep 4
clear
echo "Confirming expirations dates for each user..."
sleep 3
clear
for user in "${users[@]}"
do
echo "---------------------------------------------------------------"
echo "                  ACOUNT EXPIRATION DATE FOR $user             "
echo "---------------------------------------------------------------"
sudo chage -l $user 
echo "---------------------------------------------------------------"
echo ""
done 

