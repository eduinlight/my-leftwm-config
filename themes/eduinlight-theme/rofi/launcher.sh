#!/usr/bin/env bash

# NOTE: just copy this folder in ~/.config/rofi/launchers/slate/

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# slate_full     slate_center     slate_left
# slate_right    slate_top        slate_bottom

theme="slate_right"
color="Black.rasi"
dir="$HOME/.config/rofi/launchers/slate"

# styles=($(ls -p --hide="colors.rasi" $dir/styles))

sed -i -e "s/@import .*/@import \"$color\"/g" $dir/styles/colors.rasi

# comment these lines to disable random style
# themes=($(ls -p --hide="launcher.sh" --hide="styles" $dir))
# theme="${themes[$(( $RANDOM % 6 ))]}"

rofi -show run -theme $dir/"$theme"
