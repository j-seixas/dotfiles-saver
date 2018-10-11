#!/bin/bash

#Create Backup folder on Documents location
dateVar=$(date +%Y-%m-%d-%l-%M-%S)
folder="$HOME/Documents/Backup-$dateVar"
mkdir "$folder"
#cd "$folder"

#Save Files into Backup folder
cp ~/.Xresources $folder/Xresources
cp ~/.i3/config $folder/i3.config
cp ~/.config/polybar $folder/polybar -r
cp ~/.config/compton.conf $folder/compton.conf
cp ~/.config/rofi/config $folder/rofi.config
cp ~/.config/nitrogen $folder/nitrogen -r

cp Xresources $HOME/.Xresources
cp i3.config $HOME/.i3/config
cp polybar $HOME/.config/polybar -r
cp compton.conf $HOME/.config/compton.conf
cp rofi.config $HOME/.config/rofi/config
cp nitrogen $HOME/.config/nitrogen -r

#Copy files now
echo 'Done...'