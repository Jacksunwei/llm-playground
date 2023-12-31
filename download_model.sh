#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 codellama/CodeLlama-7b-hf"
  exit 1
fi

huggingface-cli download --repo-type model --revision main --local-dir "./models/$1" "$1"
