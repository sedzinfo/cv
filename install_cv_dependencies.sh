#!/bin/bash
# install_cv_dependencies.sh
# Installs R, LaTeX (TeX Live), Pandoc, and fonts for Greek/Unicode support on Debian/Ubuntu Linux
set -e

# Update package lists
sudo apt update

# Install R
sudo apt install -y r-base

# Install Pandoc
sudo apt install -y pandoc

# Install TeX Live (full for maximum compatibility)
sudo apt install -y texlive-full

# Install fonts for Greek/Unicode support
sudo apt install -y fonts-dejavu fonts-freefont-ttf

# Optionally install Roboto font
sudo apt install -y fonts-roboto || true

echo "All dependencies installed. You may need to restart your R session."
