#!/bin/bash

icon="$HOME/Pictures/lock.png"
tmpbg="/tmp/_lock_screen.png"

if [ ! -f $tmpbg ]; then
    #pixelate
    #convert $1 -scale 10% -scale 1000% -gamma 0.5 $tmpbg
    #convert $1 -fill black -colorize 50%  $tmpbg
    #blur
    convert $1 -fill black -colorize 50% -filter Gaussian -blur 0x2 $tmpbg
    convert $tmpbg $icon -gravity center -composite -matte $tmpbg
fi

i3lock -i $tmpbg
