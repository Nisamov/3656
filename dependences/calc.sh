#!/bin/bash
# Function

function add(){
    total=$(( $1 + $2 ))
    echo "$total"
}

function substract(){
    total=$(( $1 - $2 ))
    echo "$total"
}

function divide(){
    total=$(( $1 / $2 ))
    echo "$total"
}

# Basic calculator
if [[ $1 == "sum" ]]; then
    # Call function add
    add
elif [[ $1 == "substract" ]]; then
    # Call function substract
    substract
elif [[ $1 == "divide" ]]; then
    # Call function divide
    divide
else
    # Wrong operation
    echo "[#] Invalid input, try with "sum", "substract", "divide" and add 2 values X, Y"
    echo "[#] Example: 'add 3 7', Output: 10."
fi
