# Check if a file exists and is readable.

#!/bin/bash

file="/Users/gunduboina.saikrishna/Repos/Bash-Scripts/Conditions/bash-01.sh"

if [[ -e $file && -r $file ]];
then
    echo "$file is exists and readable"
else
    echo "$file not exists"    
fi    