#!/bin/bash

# Function to perform addition
addition() {
  result=$(echo "$1 + $2" | bc)
  echo "Result: $result"
}

# Function to perform subtraction
subtraction() {
  result=$(echo "$1 - $2" | bc)
  echo "Result: $result"
}

# Function to perform multiplication
multiplication() {
  result=$(echo "$1 * $2" | bc)
  echo "Result: $result"
}

# Function to perform division
division() {
  result=$(echo "scale=2; $1 / $2" | bc)
  echo "Result: $result"
}

# Main script starts here

# Prompt the user for operation and numbers
echo "Simple Calculator"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice (1-4): " choice
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Perform the selected operation
case $choice in
  1)
    addition $num1 $num2
    ;;
  2)
    subtraction $num1 $num2
    ;;
  3)
    multiplication $num1 $num2
    ;;
  4)
    division $num1 $num2
    ;;
  *)
    echo "Invalid choice!"
    ;;
esac
