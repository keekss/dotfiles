#!/bin/bash

# List of packages to install
packages=("git" "zsh" "tmux")

# Update package lists
sudo apt update

# Install packages
for package in "${packages[@]}"; do
    if ! dpkg -l | grep -q "^ii  $package"; then
        if ! sudo apt install -y "$package"; then
            echo "Failed to install $package. Exiting script."
            exit 1
        fi
    else
        echo "$package is already installed."
    fi
done

# Symlink

# Directory of your dotfiles repository
# dotfiles_dir="/path/to/your/dotfiles"

# # List of files to symlink
# files=("file1" "file2" "file3")

# # Create symlinks
# for file in "${files[@]}"; do
#     ln -s "$dotfiles_dir/$file" "$HOME/$file"
# done