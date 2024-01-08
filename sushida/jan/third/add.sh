#!/bin/bash

if [ ! -f "$2" ]; then
    echo "  first play!"
else
    max=$(cat $2 | sort -n | tail -n 1)
    echo -e "  max:  \e[34m${max} \e[0myen"


    echo -e " last:  \e[36m$1 \e[0myen"
    if [ $1 -gt $max ]; then
    echo -e " \e[32mHigh!\e[0m"
    fi
fi






echo $1 >> $2; cat -n $2 | sort -k 2 -n -r






if [ $1 -ge 3000 ]; then
    echo -e " \e[35mclear!"
fi

#echo "sushida"
