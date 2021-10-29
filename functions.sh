#!/bin/bash


while true
do
clear
read -p "Enter a number >> " num1
read -p "Enter another number >> " num2
echo ""
echo "Now that we have numbers $num1 and $num2, these are the operations you can do: "
echo ""
echo "--------------------"
echo "     OPERATIONS     "
echo "--------------------"
printf "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n"
echo "--------------------"
echo ""
read -p "Select one operation above [1-4] >> " selection

calculateOperation()
{
operation=0
echo "You selected $3"
echo "Calculating the $3 of $1 and $2 ... please wait"

case $3 in
"Addition")
operation=$(($1 + $2))
;;

"Subtraction")
operation=$(($1 - $2))
;;

"Multiplication")
operation=$(($1 * $2))
;;

*)
operation=$(($1 / $2))
esac

sleep 3
echo "The $3 of $1 and $2 is $operation"
}


case $selection in
1)
calculateOperation $num1 $num2 "Addition"
;;
2)
calculateOperation $num1 $num2 "Subtraction"
;;
3)
calculateOperation $num1 $num2 "Multiplication"
;;
4)
calculateOperation $num1 $num2 "Division"
;;
*)
echo "Invalid selection"
;;
esac

read -p "Do you want to perform another operation? [Y/N]? >> " choice
if [ "$choice" == "N" ] || [ "$choice" == "n" ];
then
echo "Thanks for using our calculator"
break
fi
done


