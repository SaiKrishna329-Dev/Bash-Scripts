# 1.To check whether a number is positive, negative or zero

#!/bin/bash

read -p "enter the number: " num

if [[ "$num" -eq 0 ]]
then
 echo "$num is zero"
elif [[ "$num" -gt 0 ]]
then
 echo "$num is positive number"
else
 echo "$num is negative number" 
fi 