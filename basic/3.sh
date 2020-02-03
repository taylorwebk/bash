#!/bin/bash
read -p "Type your name: " name
if [[ $name == "Alice" ]] || [[ $name == "Bob" ]]
then
  echo "Greetings $name"
else
  echo "You're not Bob or Alice"
fi