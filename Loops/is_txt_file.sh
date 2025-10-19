# Loop through all .txt files in a directory and display the number of lines in each.

#!/bin/bash

dir="/Users/gunduboina.saikrishna/Repos/DevOps"

for file in "$dir"/*.txt
do 
  if [[ -e $file ]]; then
    
    num=$(wc -l < $file)
    echo "number of lines in $file:$num"
  fi
done      