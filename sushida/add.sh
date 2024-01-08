#!/bin/bash

max=$(cat $2 | sort -n | tail -n 1)
echo -e "  \e[34mmax ${max}yen\e[0m"

echo "$1" >> "$2" 

#echo "ok"
cat -n "$2" | sort -k 2 -n -r | head -11
echo -e "  \e[36m$(cat $2 | tail -n 1)yen"

if [ -f "$2" ] && [ "$1" -gt "$max" ]; then
    echo -e "  \e[31mhigh"
elif [ ! -f "$2" ]; then
    echo "first play"
fi
