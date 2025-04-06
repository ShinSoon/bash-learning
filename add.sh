
#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Error: Incorrect number of arguments provided."
  #Print the correct usage instruction using $0 for the script name.
  echo "Usage: $0 <integer1> <integer2>"
  exit 1
fi

# --- Assign Arguments to Variables ---
# Assign the first argument ($1)to num1 and the second ($2) to num2
# Quoting is good practice, especially if inputs might contain spaces (Though unlikely here)

num1="$1"
num2="$2"

# --- Input Validation and Calculations 
# Check if both* num1 AND num2 consists only of digits (non-negative integers)
# Uses Bash extended test [[ ... ]] and the regex operator =~
if [[ "$num1" =~ ^[0-9]+$ ]] && [[ "$num2" =~ ^[0-9]+$ ]]; then
  # --- Inputs are valid integers ---

  # Add a message indicating what the script is doing
  echo "Calculating the sum of the two provided integers..."

  # Perform the addition using arithmetic expansion $((...))
  sum=$((num1 + num2))

  # Print the final result
  echo "The sum of $num1 and $num2 is: $sum"

else
  # --- One or both inputs are not valid non-negative integers ---
  # Print a specific error message.
  echo "Error: Both arguments must be non-negative integers."
  # Reminder of correct usage.
  echo "Usage: $0 <integer1> <integer2>"
  exit 1 # Exit with an error status
fi

exit 0
