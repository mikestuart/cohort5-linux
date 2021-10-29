#!/bin/bash

# Author: Dunieski Otano
# Date: October 29th, 2021
# Purpose: Explain scripting to my students

clear

read -p "Would you delight us with your full name >> " NAME

# Another way to get user's input -> below 
#echo "Enter your age"
#read age
#echo "You are $age years old"
#sleep 4

clear
echo "Welcome, $NAME"
echo ""
echo "Commands to execute: "
echo "1. grep"
echo "2. ls"
echo "3. cat"
echo "4. tail"
echo "5. Addition operation"
echo ""
read -p "Select one above [1-3] >> " selection

# Options are executed here
# -----------
#    Case
# -----------
case $selection in 
1) 
clear
read -p "In the users file in the Desktop what user do you want to grep >> " user
cat ../users | grep $user
;;

2) 
clear
echo "These are the available directories: "
ls ../..
read -p "Enter directory >> " directory
ls ../../$directory
;;

3) 
clear
echo "You said you want to use the 'cat' command"
echo "find the file you want to cat"
cd  
tree
read -p "Enter directory >> " dir
read -p "Enter file >> " file
cat $dir/$file
;;

4)
clear
echo "You have selected the 'tail' command"
echo "Here is a tree view of your file system: "
cd	
tree
read -p "Select a directory >> " dir
read -p "Select the file you want to tail >> " file
read -p "How many lines do you want to display >> " line
echo ""
echo "Here you go: "
tail -$line $dir/$file
;;

5)
clear
echo "You have entered $1 and $2"
echo "Let's find the addition of those numbers"
addition=$(($1 + $2))
echo "Adding $1 and $2 ..."
sleep 4
echo "The addition of $1 and $2 is $addition"
;;

*) echo "Invalid option"
;;
esac
#  End of case
