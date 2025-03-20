#!/bin/bash
PACKAGE_NAME="libopenal-dev"
PACKAGE_LIST="zzz_package_urls.txt"

# Clear previous list
> "$PACKAGE_LIST"

# Fetch package URLs and save to file
sudo apt-get install --print-uris --yes $PACKAGE_NAME | grep ^\' | cut -d\' -f2 >> "$PACKAGE_LIST"

# Download all required packages
wget -i "$PACKAGE_LIST"

echo "Downloaded $PACKAGE_NAME packages."

