#!/usr/bin/env bash
# This script prompts the shell and
# creates a CSS file with starting reset

# Prompt the shell for a filename
read -rp "Enter a filename: " filename

# Create the filename with the given name
if touch "$filename"; then
  # Use curly braces to group the commands and redirect the output
  {
    echo "* {"
    echo "  margin: 0;"
    echo "  padding: 0;"
    echo "  box-sizing: border-box;"
    echo "}"
  } >> "$filename"

  # Print a success message to stdout
  echo "File $filename created!"
else
  # Print an error message if file creation fails
  echo "Error: Unable to create file $filename."
fi
