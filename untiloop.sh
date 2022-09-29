#!/bin/bash

a=3

until [ ! $a -lt 20 ]
do
echo $a
a=$((a+3))
done
