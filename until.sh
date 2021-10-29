#!/bin/bash

clear
counter=1

until [ $counter -gt 10 ];
do
echo $counter
((counter++))
done
echo "Loop has been exited when counter became $counter"


# counter = 1
# counter = 2
# counter = 3
# counter = 4
# ...
# counter = 11, and exits the loop
