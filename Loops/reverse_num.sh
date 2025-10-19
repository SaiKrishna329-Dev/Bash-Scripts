#!/bin/bash

#Reverse a number using a while loop.

read -p "Enter the number to reverse: " number

reverse=0

while (( number > 0 ))
do 
  remainder=$(( number % 10 ))
  reverse=$(( reverse * 10 + remainder ))
  number=$(( number / 10 ))
done
    echo "the reversed number: $reverse"  