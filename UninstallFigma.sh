#!/bin/bash

echo "Thanks for using Figwrapper!"
echo "You need to be root to execute this action"
sudo rm -rf $HOME/Applications/Figma
echo "Deleting main folder..."
sleep 1

echo "Deleting global executable..."
sudo rm -rf /usr/local/bin/figma
sleep 1

echo "Deleting symlink..."
sudo rm -rf $HOME/.icons/figma.png
sleep 1

echo "Deleting .desktop..."
sudo rm -rf $HOME/.local/share/applications/Figma.desktop
sleep 1

echo "Done!"
