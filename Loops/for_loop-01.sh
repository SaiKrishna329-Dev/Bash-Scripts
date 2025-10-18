#Syntax: for ( initialization; Condition; increment )

# Print numbers from 1 to 10 using a for loop.

#!/bin/bash
 
for (( i=1; i<=10; i++ ))
do 
  echo "output: $i"
done  

#Print even numbers between 1 to 20.

max=20

for (( i=1; i<=max; i++ ))
do 
   if (( i%2 == 0)); then
   echo "even number is: $i"
   fi
done   


#