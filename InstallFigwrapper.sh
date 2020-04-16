#!/bin/bash

# Welcome the user
echo ""
echo "Thanks for trying Figwrapper!"

# Epmty 'echos' in order to create like break, for elegance : )
echo ""

# Sleepers will be used throughout the script to give the illusion of "processing", it's a required psychological trick so the user doesn't think that something went wrong because it went too fast.
sleep 3

echo "Python 3 and flask installed through pip3 is required for the 'Linux Font Helper' to work, if you get errors, please make sure you have Python 3, pip3 and flask installed on your system and try running this script again after running 'sh ./UninstallFigwrapper.sh.'"
echo ""
echo "You should see something like 'Requirement already satisfied'. Please wait."

echo ""

# Give the user enough time to read the warning
sleep 15

echo "So let's make sure it's already installed, if not, we'll install it."

echo ""

sleep 5

for dir in font-helper
do
  (
  cd "$dir" || exit
  sudo pip3 install -r requirements.txt
  )
done

echo ""

sleep 1

echo "Done!"

sleep 1

# Check the existence of the required directories, if they don't exist, create them
DIR="$HOME/Applications"
if [ -d "$DIR" ]; then
    echo ""
    echo "The '"$DIR"' directory already exists on your filesystem."
    echo ""
    sleep 1
    echo "Proceeding..."
    echo ""
    sleep 1

else
    echo "The '"$DIR"' directory doesn't exist on your filesystem."
    echo ""
    echo "Creating one..."
    echo ""
    sleep 1
    mkdir $HOME/Applications
    sleep 1
fi

# Copy the main files
cp -r Figma $HOME/Applications/
sleep 1
cp -r font-helper $HOME/Applications/Figma/
sleep 2
cp Figma.desktop $HOME/.local/share/applications/
sleep 1
echo "Copying files..."
echo ""
sleep 1
echo "Installing Figma to your global executable path..."
echo ""
sudo cp figma /usr/local/bin/

DIR="/usr/local/share/icons/"
if [ -d "$DIR" ]; then
    echo "The '"$DIR"' directory already exists on your filesystem."
    echo ""
    sleep 1
    echo "Proceeding..."
    echo ""
    sleep 1

else
    echo "The '"$DIR"' directory doesn't exist on your filesystem."
    echo ""
    sleep 1
    echo "Creating one..."
    echo ""
    sleep 1
    sudo mkdir /usr/local/share/icons/
    echo "Done!"
    echo ""
fi

sleep 1

DIR="/usr/local/share/icons/figma"
if [ -d "$DIR" ]; then
    echo "The '"$DIR"' directory already exists on your filesystem."
    echo ""
    sleep 1
    echo "Proceeding..."
    echo ""
    sleep 1

else
    echo "The '"$DIR"' directory doesn't exist on your filesystem."
    echo ""
    sleep 1
    echo "Creating one..."
    echo ""
    sleep 1
    sudo mkdir /usr/local/share/icons/figma
    echo "Done!"
    echo ""
fi

sleep 1

echo "Creating a symlink for the icon..."
echo ""

sleep 1

# Symlink the icon
sudo ln -s $HOME/Applications/Figma/resources/app/icon.png /usr/local/share/icons/figma/figma.png
sudo chmod 770 $HOME/.local/share/applications/Figma.desktop

echo "Done!"
echo ""

sleep 1

echo "Figwrapper is installed on your system! Enjoy!"
echo ""
