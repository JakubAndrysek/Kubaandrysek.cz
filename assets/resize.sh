#!/bin/bash

# Define the input and output directories and the maximum width
input_dir="in"
output_dir="out"
max_width=1000

# Loop through all files in the input directory and its subdirectories
find "$input_dir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | while read -r file; do
  # Determine the output file path
  output_file="${file/$input_dir/$output_dir}"

  # Create the output directory if it doesn't exist
  mkdir -p "$(dirname "$output_file")"

  # Resize the image and save it to the output file path
  convert "$file" -resize "${max_width}x>" "$output_file"
done
