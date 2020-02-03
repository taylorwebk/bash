#!/bin/bash

read -p "Type a number: " n
sum=$(( ($n * ($n + 1))/2 ))
echo "The sum is: $sum"

echo "Using a loop:"

i=1
sum2=0
while [[ $i -le $n ]]
do
  sum2=$(($sum2 + $i))
  i=$(( $i + 1 ))
done

echo "The sum is: $sum2"
