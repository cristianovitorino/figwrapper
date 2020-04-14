#!/bin/bash

echo "Thanks for trying Figwrapper!"

sleep 1

echo "Python and flask through pip3 is required for the Linux Font Helper to work, if you get errors, please make sure you have Python 3, flask through pip3 installed on your system and try running this script again."

for dir in font-helper
do
  (
  cd "$dir" || exit
  sudo pip3 install -r requirements.txt
  )
done

sleep 1

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

cp -r font-helper $HOME/Applications/Figma/

sudo ln -s $HOME/Applications/Figma/resources/app/icon.png /usr/local/share/icons/figma/figma.png
cp Figma.desktop $HOME/.local/share/applications/
sudo chmod 770 $HOME/.local/share/applications/Figma.desktop

echo "Done!"
