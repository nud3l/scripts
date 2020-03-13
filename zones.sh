#!/bin/bash

OPTIND=1 
DATE=""

USAGE="Display a time in various timezones. Usage:

	-h	show this help
	-d	specify a date, time, and timezone

Examples:
zones -d 'TZ=\"Asia/Jerusalem\" 09:00 next Fri'
zones -d '09:00 next Mon'

Use tzselect to find your time zone."


while getopts "h?d:" option; do
	case "${option}" in
	h|\?) echo "$USAGE"
	      exit
	      ;;
	d) DATE=$OPTARG
	   ;;
	esac
done

shift $((OPTIND - 1))

echo -n "Tokyo:		" && TZ=Asia/Tokyo date --date="$DATE"
echo -n "Berlin/Vienna:	" && TZ=Europe/Amsterdam date --date="$DATE"
echo -n "London:		" && TZ=Europe/London date --date="$DATE"
echo -n "UTC:		" && TZ=UTC date --date="$DATE"
echo -n "Utah:		" && TZ=America/Denver date --date="$DATE"
echo -n "California:	" && TZ=America/Los_Angeles date --date="$DATE"

