#!/bin/bash

if [ ! -f $2 ]; then
    echo -e "\e[32mfirst play\e[0m"
fi

if [ -f $2 ]; then
    max=$(cat $2 | sort -n | tail -n 1)
    
    echo -e "\e[33mmax: $max \e[0myen"

    if [ $1 -gt $max ]; then
        high=$1
    else
        high=0
    fi
fi

echo $1 >> $2 ; cat -n $2

if [ $high -gt $max ]; then
    echo -e "\e[36mHigh!\e[0m"
else
    echo -e "\e[34mlast: $1 yen\e[0m"
fi
