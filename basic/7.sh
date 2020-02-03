#!/bin/bash

i=1
while [[ $i -le $(( 12 )) ]]
do
  j=1
  while [[ $j -le $(( 10 )) ]]
  do
    echo "$i x $j = $(( $i * $j ))"
    j=$(( $j + 1 ))
  done
  i=$(( $i + 1 ))
done
