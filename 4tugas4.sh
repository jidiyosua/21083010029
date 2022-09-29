#!/bin/bash

header() {
	msg="# $* #"
	edge=$(echo "$msg" | sed 's/./=/g')
	echo "$edge"
	echo "$msg"
	echo "$edge"
}

header "bilangan positif kelipatan ganjil"
echo ""
read -p 'input:' bil
let gg=$bil%2
echo ""
if [ $bil -gt 0 ]
then
        if [ $gg == 0 ]
        then 
                echo $bil merupakan bilangan genap.
                bil1=$((bil+1))
                bil2=$((bil-1))
                echo -e "rekomendasi bilangan yang tepat : $bil1 atau $bil2\n"
                echo -e "input : $bil1\n"
                while [ $bil1 -gt 0 ]
                do
                        echo $bil1
                        bil1=$((bil1-2))
                done
                echo -e "\natau\n"
                echo -e "input : $bil2\n"
                until [ ! $bil2 -gt 0 ]
                do
                        echo $bil2
                        bil2=$((bil2-2))
                done
        else
                while [ $bil -gt 0 ]
                do
                        echo $bil
                        bil=$((bil-2))
                done
        fi
else
        echo "masukkan bilangan positif!"
fi