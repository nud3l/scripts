#!/bin/sh

display=$1

case $display in
	"lap")
		xrandr --output eDP-1;;
	"ext")
		xrandr --output eDP-1 --left-of DP-1;;
	"auto")
		xrandr --auto;;
	*)
		echo "please specify monitor";;
esac

