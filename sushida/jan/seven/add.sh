#!/bin/bash

if [ ! -f $2 ]; then
    echo -e "\e[33mFirst play!\e[0m"
fi

if [ -f $2 ]; then
    max=$(cat $2 | sort -n | tail -n 1)
    echo -e "\e[35m max: $max yen\e[0m"
    if [ $1 -gt $max ]; then
        echo -e "\e[34mHIgh! last: $1 yen\e[0m"
    else 
        echo -e "\e[36mlast: $1 yen \e[0m"
    fi
fi

echo $1 >> $2; cat -n $2
