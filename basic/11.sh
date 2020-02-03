#!/bin/bash

k=1
sum=0
while [[ $k -le 1000 ]]
do
  percent=$( echo "scale=1; ($k*100)/1000" | bc )
  clear
  echo "Calculating... $percent%"
  partial=$( echo "scale=10; (-1^($k+1))/(2*$k-1)" | bc )
  sum=$( echo "$partial+$sum" | bc )
  k=$(($k+1))
done

sum=$( echo "4*$sum" | bc )

echo $sum
