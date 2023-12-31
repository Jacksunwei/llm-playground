#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 tatsu-lab/alpaca"
  exit 1
fi

huggingface-cli download --repo-type dataset --revision main --local-dir "./datasets/$1" "$1"
