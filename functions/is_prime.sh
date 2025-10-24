#!/bin/bash

is_prime() {
    local num=$1

    if (( num<2 )); then
      echo "$num is not a prime number"
      return
    fi

    if (( num == 2 && num == 3 )); then
       echo "$num is a prime number"  
       return
    fi

    if (( num % 2 == 0 )); then
        echo "$num is not a prime number"
        return  
    fi

    for (( i=3; i*i<=num; i+=2 ))  
    do
      if (( num % i == 0 )); then
         echo "$num is not a prime number"
         return  
      fi
    done 
    echo "$num is a prime number"  
}

read -p "Enter the number: " number
is_prime "$number"
