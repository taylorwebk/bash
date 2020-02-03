#!/bin/bash

read -p "Type a number: " n

i=1
sum=0

while [[ $i -le $n ]]
do
  if [[ $(( $i % 3 )) -eq 0 ]] || [[ $(( $i % 5 )) -eq 0 ]]
  then
    sum=$(( $sum + $i ))
  fi
  i=$(( $i + 1 ))
done

echo "La sumatoria es: $sum"
