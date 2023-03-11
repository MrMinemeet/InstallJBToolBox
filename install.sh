#!/bin/bash
# Copyright (c) 2023 Alexander Voglsperger | MrMinemeet

# File name for download and installation
FILE="jetbrains-toolbox-1.27.3.14493"

# Download file
echo "Downloading $FILE.tar.gz"
wget -O /tmp/$FILE.tar.gz https://download-cdn.jetbrains.com/toolbox/$FILE.tar.gz

# Unpack file
echo "Unpacking file..."
tar xf /tmp/$FILE.tar.gz -C /tmp

# Move file to /opt/ (recommended by JetBrains)
echo "Installing Jetbrains Toolbox..."
mv -f /tmp/$FILE/jetbrains-toolbox /opt/

echo "Installation complete!"
