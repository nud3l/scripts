#!/bin/sh

USAGE="Starts the telegram, element and discord clients if they are not running.
Stops them, if they are running via pkill.:

	-h	show this help

Examples:
focus"

# app names
discord_process="Discord"
discord_bin="discord"
telegram_process="telegram"
telegram_bin="telegram-desktop"
element_process="electron"
element_bin="element-desktop"

# if either is present, kill all
pidof $discord_process
discord_pid=$?
pidof $telegram
telegram_pid=$?
pidof $element_process
element_pid=$?

if [ $discord_pid -eq "0" ] || [ $telegram_pid -eq "0" ] || [ $element_pid -eq "0" ]
then
	echo "Stopping chat applications."
	$(pkill -9 $discord_process)
	$(pkill -9 $telegram_process)
	$(pkill -9 $element_process)
else
	echo "Starting chat applications."
	$($discord_bin </dev/null &>/dev/null &)
	$($telegram_bin </dev/null &>/dev/null &)
	$($element_bin </dev/null &>/dev/null &)
fi
