#!/bin/bash
directory=$HOME/.config/hypr/wallpapers
monitors=`hyprctl monitors | grep Monitor | awk '{print $2}'`

if [ -d "$directory" ]; then
    # This sets the random background to a png file in the given directory that is not the current background
    random_background=$(ls $directory/*.png | grep -vwE $(swww query | awk -F'/' 'NR==1{print $NF}') | shuf -n 1)
    ln -sf $random_background $directory/current_wallpaper 
    # Moved swww for wallpapers
    swww img -t wave --transition-angle 240 $directory/current_wallpaper
    # trigger sddm script to keep login bg the same as swww
    cp $HOME/.config/hypr/wallpapers/current_wallpaper /usr/share/sddm/themes/Ocean/assets/bg.png

    # Old code for hyprpaper
    #hyprctl hyprpaper preload $directory/current_wallpaper
    #for monitor in $monitors; do
    #    hyprctl hyprpaper wallpaper "$monitor, $directory/current_wallpaper"
    #done
fi
