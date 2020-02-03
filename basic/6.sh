#!/bin/bash

function showMessages() {
  echo "[1] Show the sumatory."
  echo "[2] Show the product."
  echo "[0] Exit."
}

function sumatory() {
  local res=$(( ($1 * ($1 + 1)) / 2 ))
  echo $res
}

function product() {
  local prod=1
  i=1
  while [[ $i -le $1 ]]
  do
    prod=$(( $prod * $i ))
    i=$(( $i + 1 ))
  done
  echo $prod
}

read -p "Type a number: " n

showMessages
read opt

while [[ $opt != "0" ]]
do
  case $opt in
    1 )
      suma=$(sumatory $n)
      echo $suma
      ;;
    2 )
      producto=$(product $n)
      echo $producto
      ;;
  esac
  showMessages
  read opt
done
