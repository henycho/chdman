#!/bin/bash

# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Set the input directory to the first argument or current directory if not provided
INPUT_DIR=${1:-.}

# Iterate over the files with the specified extensions in the input directory
find "$INPUT_DIR" -type f \( -name "*.cue" -o -name "*.gdi" -o -name "*.iso" \) | while IFS= read -r file; do
    # Extract the filename without the extension
    filename=$(basename "$file" | sed 's/\.[^.]*$//')
    
    # Determine the directory of the input file
    file_dir=$(dirname "$file")
    
    # Print the filename and path of the input file
    echo -e "${CYAN}Processing file: $file${NC}"
    
    # Display the current running command
    echo -e "${YELLOW}Running: chdman createcd -i \"$file\" -o \"$file_dir/$filename.chd\"${NC}"
    
    # Run the chdman command
    chdman createcd -i "$file" -o "$file_dir/$filename.chd"
    
    # Print success message
    echo -e "${GREEN}Successfully processed: $file${NC}"
done