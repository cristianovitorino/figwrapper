#!/usr/bin/env bash

echo "Thanks for using Figwrapper!"

if [[ "$EUID" -ne "0" ]]
then
    echo "You need to be root to execute this action"
    exit "1"
fi

echo "Deleting main folder..."
rm -rf "$HOME/Applications/Figma"

echo "Deleting global executable..."
rm -rf "/usr/local/bin/figma"

echo "Deleting icon..."
rm -rf "/usr/local/share/icons/figma"

echo "Deleting .desktop..."
rm -rf "$HOME/.local/share/applications/Figma.desktop"

echo "Done!"
