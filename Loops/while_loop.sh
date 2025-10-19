#Print numbers from 10 down to 1 using a while loop.

#!/bin/bash

count=10

while [[ "$count" -ge 1 ]]  # $count is needed if we using [], Inside arithmetic evaluation (( )), you don’t need quotes or $ — Bash handles variables natively. 
#while (( count >= 1 ))
do
  echo "count is: $count"
  ((count--))
  #sleep 1
done
  echo "loop finished"  

#Take user input until they type “exit”.

# while true

# do
# read -p "Enter the value(type 'exit' to quit): " value

#   if [[ "$value" == "exit" ]]; then 
#       echo "exiting the session"
#       exit 0
#   else
#       echo "you entered: $value"
#   fi    
# done  

#Calculate factorial of a number using a while loop.

read -p "Enter number to calculate factorial: " number
factorial=1
count=$number

while (( count >= 1))
do  
    factorial=$(( factorial * count ))
    ((count--))
done
     echo "factorial of $number is: $factorial"