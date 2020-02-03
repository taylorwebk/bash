#!/bin/bash

secret=$(( ($RANDOM % 100) + 1 ))
read -p "Guess the number: " n

while [[ $n -ne $secret ]]
do
  if [[ $n -lt $secret ]]
  then
    echo "$n is LESS than the number"
  else
    echo "$n is GREATER that the number"
  fi
  read -p "Guess the number: " n
done

echo "Congrats! the number is: $secret !!!"


