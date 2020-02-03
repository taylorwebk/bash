#!/bin/bash

function isp() {
  local i=2
  local isprime=1
  while [[ $i -le $(( $1 / 2 )) ]]
  do
    if [[ $(( $1 % $i )) -eq 0 ]]
    then
      isprime=0
    fi
    i=$(( $i + 1 ))
  done
  echo $isprime
}

j=1

while [[ $j -le 50 ]]
do
  res=$(isp $j)
  if [[ $res -eq 1 ]]
  then
    echo "$j SI"
  fi
  j=$(( $j + 1 ))
done