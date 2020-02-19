#!/usr/bin/env bash

echo "Thanks for trying Figwrapper!"

if [[ -d "$HOME/Applications" ]]
then
    echo "'$HOME/Applications' directory already exists on your filesystem. Proceeding."
else
    echo "'$HOME/Applications' directory doesn't exist on your filesystem. Creating one."
    mkdir "$HOME/Applications"
fi

echo "Moving files..."
cp -r "Figma" "$HOME/Applications/"

echo "Installing Figma to your global executable path (requires your password)..."
sudo cp "figma" "/usr/local/bin/"

if [[ -d "/usr/local/share/icons/figma" ]]
then
    echo "'/usr/local/share/icons/figma' directory already exists on your filesystem. Proceeding."
else
    echo "'/usr/local/share/icons/figma' directory doesn't exist on your filesystem. Creating one."
    mkdir "/usr/local/share/icons/figma"
fi

cp "$HOME/Applications/Figma/resources/app/icon.png" "/usr/local/share/icons/figma/figma.png"
cp "Figma.desktop" "$HOME/.local/share/applications/"

echo "Done!"
