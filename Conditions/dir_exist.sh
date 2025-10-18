#!/bin/bash

dir="/Users/gunduboina.saikrishna/Repos/DevOps"

if [[ -d "$dir" ]]; then
   echo "$dir exists"

else   
    mkdir -p "$dir"
    chmod 755 "$dir"
    echo "$dir created"
fi    