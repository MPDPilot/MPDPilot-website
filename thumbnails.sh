#!/bin/bash

# requires imagemagick installed!
# example usage to regenerate screenshots:
# ./thumbnails.sh "./assets/screenshots/orig/iPhone 15 Pro Max" "./assets/screenshots/app/iphone"
# ./thumbnails.sh "./assets/screenshots/orig/iPad Pro (6th)" "./assets/screenshots/app/ipad"

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_directory> <output_directory>"
    exit 1
fi

input_dir="$1"
output_dir="$2"

rm -fr "$output_dir/*"

# Create main output directory
mkdir -p "$output_dir/main"
mkdir -p "$output_dir/thumb"

# Convert png images in input directory to jpg and thumbnail jpg files with specified compression rates
for file in "$input_dir"/*.png; do
    filename=$(basename "$file" .png)

    # Convert png image to jpg with specified compression rate and store in main subdirectory of output directory
    magick convert -quality 85 "$file" "$output_dir/main/$filename.jpg" 2>/dev/null

    # Convert png image to thumbnail jpg with specified compression rate and store in thumb subdirectory of output directory
    magick convert -quality 95 -resize "200x>" "$file" "$output_dir/thumb/$filename.jpg" 2>/dev/null

    # Output yaml structure to stdout
    echo " - path: \"$output_dir/main/$filename.jpg\""
    echo "   thumb: \"$output_dir/thumb/$filename.jpg\""
    echo "   title: \"Your title ($filename.jpg)\""
done