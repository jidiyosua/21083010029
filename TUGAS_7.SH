#!/bin/bash

# Function
rectangle() {
	read -p $'enter length:\n' p
	read -p $'\nenter width:\n' l
	luas=$(printf "$p $l" | awk '{print $1*$2}')
	echo -e "\narea of rectangle:\n$luas"
}

# memanggil variabel
rectangle