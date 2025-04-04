
#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: ./add.sh <number1> <number2>"
  exit 1
fi

num1="$1"
num2="$2"

if [[ "$num1" =~ ^[0-9]+$ ]] && [[ "$num2" =~ ^[0-9]+$ ]]; then
  sum=$((num1 + num2))
  echo "The sum of $num1 and $num2 is: $sum"
else
  echo "Error: Please provide two integer numbers as arguments."
  exit 1
fi
