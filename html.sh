#!/usr/bin/env bash
# This script prompts the shell and
# creates an empty HTML boilerplate

# Prompt the shell for a filename
read -rp "Enter a filename: " filename

# Create the filename with the given name
if touch "$filename"; then
  # Use curly braces to group the commands and redirect the output
  {
    echo "<!DOCTYPE html>"
    echo '<html lang="en">'
    echo "  <head>"
    echo '    <meta charset="UTF-8">'
    echo '    <meta name="viewport" content="width=device-width, initial-scale=1.0">'
    echo "    <title>Page Title</title>"
    echo '    <link rel="stylesheet" href="styles.css">'
    echo "  </head>"
    echo "  <body>"
    echo "  </body>"
    echo "</html>"
  } >> "$filename"

  # Print a success message to stdout
  echo "File $filename created!"
else
  # Print an error message if file creation fails
  echo "Error: Unable to create file $filename."
fi
