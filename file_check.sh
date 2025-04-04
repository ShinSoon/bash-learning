#!/bin/bash

#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: ./file_check.sh <filename>"
  exit 1
fi

filename="$1"

if [ -e "$filename" ]; then
  echo "The path '$filename' exists."
  if [ -f "$filename" ]; then
    echo "'$filename' is a regular file."
  elif [ -d "$filename" ]; then
    echo "'$filename' is a directory."
  else
    echo "'$filename' is some other type of file."
  fi
else
  echo "The path '$filename' does not exist."
fi
