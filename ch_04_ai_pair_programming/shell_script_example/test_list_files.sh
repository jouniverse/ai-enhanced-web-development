#!/bin/zsh

source list_files.sh

# Test the list_files function
test_list_files() {
    # Create a temporary directory for testing
    local temp_dir=$(mktemp -d)
    
    # Create some directories and files inside the temporary directory
    mkdir "$temp_dir/dir1"
    touch "$temp_dir/file1.txt"
    touch "$temp_dir/dir1/file2.txt"
    mkdir "$temp_dir/dir1/subdir1"
    touch "$temp_dir/dir1/subdir1/file3.txt"
    
    # Call the list_files function with the temporary directory
    list_files "$temp_dir" ""
    
    # Clean up the temporary directory
    rm -rf "$temp_dir"
}

# Run the test
test_list_files