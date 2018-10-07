#!/bin/zsh

# shell scipt to prepend i3status with more stuff

i3status | while :
do
        read line
        LG=$(setxkbmap -query | awk '/layout/{print $2}') 
        echo "kb: $LG | $line" || exit 1
done
