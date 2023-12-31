#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 codellama/CodeLlama-7b-hf"
  exit 1
fi

if [ ! -d "./models/$1" ]; then  
  echo "The model doesn't exist."
  exit 1
fi

rm -rf "./models/$1"
