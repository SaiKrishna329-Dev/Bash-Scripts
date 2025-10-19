# Iterate over a list of filenames and print their sizes.

#!/bin/bash

filenames=("dev1.txt" "dev2.txt" "dev3.txt")

for file in "${filenames[@]}";
do 
  if [[ -e $file ]]; then
        size=$(ls -lh "$file" | awk '{print $5}') 
        echo "size of $file: $size"
  else
        echo "File $file not found"
  fi
done  

#Loop through an array of names and print a greeting for each.

names=("Tom" "Jerry" "Mickey")

for name in ${names[@]}
do 
  echo "Hi $name, welcome to the DevOps"
done 