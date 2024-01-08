#!/bin/bash

for p in $(cat $1)
do
    echo -e "    ${p} yen"
done
