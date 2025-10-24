#!/bin/bash

# Addition of numbers

add() {
    
    local sum=$(( $num1+$num2 ))
    echo "$sum"
}
    result=$(add 7 2)
    echo "The sum is : $result"