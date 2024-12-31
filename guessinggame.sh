#!/bin/bash

function count_files() {
    local count=$(ls -1A | wc -l)
    echo $count
}

function validate_input() {
    if ! [[ $1 =~ ^[0-9]+$ ]]; then
        echo 0
        return
    fi
    echo 1
}

# Get the actual number of files
file_count=$(count_files)

# Welcome message
echo "Welcome to the Guessing Game!"
echo "Try to guess how many files are in the current directory."
echo "----------------------------------------"

while true; do
    # Prompt for guess
    read -p "Enter your guess: " user_guess
    
    # Validate input
    if [ $(validate_input $user_guess) -eq 0 ]; then
        echo "Please enter a valid positive number"
        continue
    fi

    # Compare guess with actual count
    if [ $user_guess -lt $file_count ]; then
        echo "Too low! Try again."
    elif [ $user_guess -gt $file_count ]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! That's the correct answer!"
        echo "There are $file_count files in the current directory."
        break
    fi
done
