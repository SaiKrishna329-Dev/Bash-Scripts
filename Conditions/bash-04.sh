# Check if a user is root.

#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "you are root user"
else
   echo "you are not root user"  
fi    

if [[ $(id -u) -eq 0 ]]; then
   echo "you are root user"
else
   echo "you are not root user"  
fi 

if [[ $(whoiam) == "root" ]]; then
   echo "you are root user"
else
   echo "you are not root user"  
fi 