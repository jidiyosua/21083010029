#!/bin/bash

read -p "masukkan semester kamu sekarang: " smt

i=0
until [ $i -eq $smt ]
do
    read -p "masukkan semester kamu $((i+1)): " ip
    IPSmhs[$i]=$ip
    i=$((i+1))
done

j=0
for x in ${IPSmhs[*]}
do
    j=$(printf "$j $x" | awk '{print $1 + $2}')
done

rataan=$(printf "$j $smt" | awk '{print $1 / $2}')
echo -e "\nIPS mhs = $j / $smt"
echo -n "IPK mhs = "
printf "%.2f" $rataan
echo