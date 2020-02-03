#!/usr/bin/bash
clear
function randomArray() {
  local numbers=()
  local i=1
  while [[ i -le $1 ]]
  do
    numbers+=($(($RANDOM%$2)))
    i=$(($i+1))
  done
  echo ${numbers[@]}
}
arr=($(randomArray 10 10))
echo "Original Array:"
echo ${arr[@]}

mayor=0
for el in "${arr[@]}"
do
  if [[ $el -ge $mayor ]]
  then
    mayor=$el
  fi
done

echo "Elemento mayor: $mayor"

