#!/bin/zsh

# Create a test file structure.

mkdir {01..04}
mkdir 01/01_{05..09}
mkdir 02/02_{01..10}
mkdir 03/03_{01..06}
mkdir 04/04_{01..04}

# create a file in each folder
# make all the files in all the folders executable
# Loop through folders 01_01 to 05_09
for folder in 01_{05..09}; do
    # Create .sh file inside each folder
    touch "01/$folder/$folder.sh"
    chmod +x 01/$folder/$folder.sh
done

# Loop through folders 02_01 to 02_10
for folder in 02_{01..10}; do
    # Create .sh file inside each folder
    touch "02/$folder/$folder.sh"
    chmod +x 02/$folder/$folder.sh
done

# Loop through folders 03_01 to 03_06
for folder in 03_{01..06}; do
    # Create .sh file inside each folder
    touch "03/$folder/$folder.sh"
    chmod +x 03/$folder/$folder.sh
done

# Loop through folders 04_01 to 04_04
for folder in 04_{01..04}; do
    # Create .sh file inside each folder
    touch "04/$folder/$folder.sh"
    chmod +x 04/$folder/$folder.sh
done

echo "Script files created successfully."