#!/bin/zsh

# Create a shell script that goes through the directory and lists all the directories, subdirectories and files in all of them

# Function to list directories, subdirectories, and files
list_files() {
    local dir=$1
    local indent=$2

    # List directories and files in the current directory
    for file in "$dir"/*; do
        # Check if the file is a directory
        if [ -d "$file" ]; then
            echo "${indent}Directory: $file"
            # Recursively call the function for subdirectories
            list_files "$file" "$indent  "
        else
            echo "${indent}File: $file"
        fi
    done
}

# Start listing from the current directory
list_files "$(pwd)" ""


