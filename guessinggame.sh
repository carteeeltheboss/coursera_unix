#!/bin/bash

function get_file_count {
    ls -1 | wc -l
}

target=$(get_file_count)
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while true; do
    read -p "Enter your guess: " guess
    if [[ $guess -lt $target ]]; then
        echo "Your guess is too low. Try again."
    elif [[ $guess -gt $target ]]; then
        echo "Your guess is too high. Try again."
    else
        echo "Congratulations! You guessed correctly."
        break
    fi
done