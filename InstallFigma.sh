#!/bin/bash

echo "Thanks for trying Figwrapper!"

if [[ -d "$HOME/Applications" ]]
then
    echo "'$HOME/Applications' directory already exists on your filesystem. Proceeding."
    sleep 1

else
    echo "'$HOME/Applications' directory doesn't exist on your filesystem. Creating one."
    mkdir $HOME/Applications
    sleep 1
fi

cp -r Figma $HOME/Applications/
echo "Copying files..."
sleep 2
echo "Installing Figma to your global executable path..."
sudo cp figma /usr/local/bin/


if [[ -d "/usr/local/share/icons/figma" ]]
then
    echo "'/usr/local/share/icons/figma' directory already exists on your filesystem. Proceeding."
    sleep 1

else
    echo "'/usr/local/share/icons/figma' directory doesn't exist on your filesystem. Creating one."
    sudo mkdir /usr/local/share/icons/figma
    sleep 1
fi

sudo ln -s $HOME/Applications/Figma/resources/app/icon.png /usr/local/share/icons/figma/figma.png
cp Figma.desktop $HOME/.local/share/applications/
sudo chmod 770 $HOME/.local/share/applications/Figma.desktop

echo "Done!"
