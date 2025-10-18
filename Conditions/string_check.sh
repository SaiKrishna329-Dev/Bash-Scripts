#Check if a given string is empty or not.

#!/bin/bash

read -p "enter the course: " course

if [[ -z "$course" ]]; then
  echo "you didn't entered the course"

elif [[ -n "$course" ]]; then  
   echo "you entered course: $course"
fi   
