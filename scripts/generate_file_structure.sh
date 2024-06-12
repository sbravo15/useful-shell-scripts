#!/bin/bash

# Check if the directory is passed as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Directory to list
DIR=$1

# Output file
OUTPUT="file_structure.txt"

# Function to list the directory structure
list_dir() {
  local DIR=$1
  local INDENT=$2

  echo "Listing directory: $DIR" >> debug.log

  for ITEM in "$DIR"/*; do
    if [ -d "$ITEM" ]; then
      echo "${INDENT}$(basename "$ITEM")/" >> "$OUTPUT"
      echo "Directory: ${INDENT}$(basename "$ITEM")/" >> debug.log
      list_dir "$ITEM" "  $INDENT"
    elif [ -f "$ITEM" ]; then
      echo "${INDENT}$(basename "$ITEM")" >> "$OUTPUT"
      echo "File: ${INDENT}$(basename "$ITEM")" >> debug.log
    fi
  done
}

# Clear the output file
> "$OUTPUT"

# Clear the debug log file
> debug.log

# Start listing the directory structure
list_dir "$DIR" ""

echo "File structure saved to $OUTPUT"

