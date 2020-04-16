#!/bin/bash

echo ""
echo "Thanks for using Figwrapper!"
echo ""
sleep 1

sudo rm -rf $HOME/Applications/Figma/
echo "Deleting main folder..."
echo ""
sleep 1
echo "Done!"
echo ""
sleep 1

echo "Deleting global executable..."
echo ""
sudo rm -rf /usr/local/bin/figma
sleep 1
echo "Done!"
echo ""
sleep 1

echo "Deleting icon..."
echo ""
sudo rm -rf /usr/local/share/icons/figma/
sleep 1
echo "Done!"
echo ""
sleep 1

echo "Deleting .desktop..."
echo ""
sudo rm -rf $HOME/.local/share/applications/Figma.desktop
sleep 1
echo "Done!"
echo ""
sleep 1

echo "Figwrapper is uninstalled from your system! Thanks for trying it!"
echo ""
