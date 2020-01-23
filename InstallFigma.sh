#!/bin/bash

echo "Thanks for trying Figwraper!"

if [[ -d "$HOME/Applications" ]]
then
    echo "'$HOME/Applications' directory already exists on your filesystem. Proceeding."
    sleep 1

else
    echo "'$HOME/Applications' directory doesn't exist on your filesystem. Creating one."
    mkdir $HOME/Applications
    sleep 1
fi

mv Figma $HOME/Applications/
echo "Moving files..."
sleep 2
echo "Installing Figma to your global executable path..."
sudo mv figma /usr/local/bin/


if [[ -d "$HOME/.icons" ]]
then
    echo "'$HOME/.icons' directory already exists on your filesystem. Proceeding."
    sleep 1

else
    echo "'$HOME/.icons' directory doesn't exist on your filesystem. Creating one."
    mkdir $HOME/.icons
    sleep 1
fi

ln -s $HOME/Applications/Figma/resources/app/icon.png $HOME/.icons/figma.png
mv Figma.desktop $HOME/.local/share/applications/

echo "Done!"