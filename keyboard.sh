#!/bin/bash
setxkbmap -option compose:rwin
setxkbmap -option ctrl:nocaps
setxkbmap -option compose:prsc
xcape -e 'Control_L=Escape'
xmodmap ~/.Xmodmap
