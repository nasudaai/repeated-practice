#!/bin/bash

if [ ! -f $2 ]; then
    echo -e "\e[32mFirst play!\e[0m"
fi


max=0
if [ -f $2 ]; then
    

    for p in $(cat $2)
    do
        if [ $p -gt $max ]; then
        max=$p
        fi
    done

    if [ $1 -lt $max ]; then
        echo -e "\e[34m  max:  $max yen\e[0m"
    fi
fi

echo $1 >> $2


time=0
for p in $(cat $2)
do
    time=$((time + 1))    
    echo -e "\e[36m  $time:  $p yen\e[0m"

done

function echo_max () {
    if [ $1 -ge "$2" ]; then
        echo -e "\e[31m  High!!! \e[0mlast:  \e[36m$1 yen\e[0m"
    fi
}

if [ -f $2 -a $max -gt 0 ]; then
    echo_max  $1 $max
fi



