#!/bin/bash

currentYear=$( date +%Y )
nextBYear=0
if [[ $(( $currentYear % 4 )) -ne 0 ]]
then
  nextBYear=$(( 4 - ($currentYear % 4) ))
fi
BYear=$(( $currentYear + $nextBYear ))

i=1

while [[ $i -le 20 ]]
do
  echo $BYear
  BYear=$(( $BYear + 4 ))
  i=$(( $i + 1 ))
done
