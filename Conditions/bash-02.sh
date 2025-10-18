# compare three numbers which one is great

#!/bin/bash

# To check 3 arguments provided or not
if [[ $# -ne 3 ]];
then 
    echo "Usage: $0 num1 num2 num3"
    exit 1
fi    

if [[ $1 -gt $2 && $1 -gt $3 ]];
then 
    echo "$1 is bigger number"

elif [[ $2 -gt $1 && $2 -gt $3 ]];    
then 
    echo "$2 is bigger number"
    
else
    echo "$3 is bigger number"   
fi     