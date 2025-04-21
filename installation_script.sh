#!/bin/bash

# Create the directory if it doesn't exist, using -p for this
echo "Creating the directory if it doesn't already exist... 🍌"
mkdir -pv ~/.apps_and_softwares

# Clear old Bucklespring installation files but leave other contents intact
echo "Checking old Bucklespring installation files inside ~/.apps_and_softwares... 🍌"
if [ -d ~/.apps_and_softwares/bucklespring ]; then
    rm -rf ~/.apps_and_softwares/bucklespring
    echo "Old Bucklespring files removed 🍌"
else
    echo "No previous Bucklespring files found, proceeding with fresh installation... 🍌"
fi

# Extract the bucklespring.zip to a dedicated folder inside ~/.apps_and_softwares
echo "Extracting the Bucklespring files... 🍌🍌🍌"

# unzip -o bucklespring.zip -d ~/.apps_and_softwares

unzip -oq bucklespring.zip -d ~/.apps_and_softwares



# Provide a friendly echo when extraction is complete
echo "Bucklespring extraction completed successfully! 🎉"


cd ~/.apps_and_softwares/bucklespring/

make libinput=1

echo ""
echo "✅ Bucklespring compiled successfully!"

echo "Now make a alias alias 1='cd ~/.apps_and_softwares/bucklespring && sudo -b -E -g input -u $USER ./buckle'"

echo "Now make a alias alias buckle='cd ~/.apps_and_softwares/bucklespring && sudo -b -E -g input -u $USER ./buckle'"

