#!/bin/bash

DATE=$1

echo "Timezones"
TZ=Asia/Tokyo date --date="$DATE"
TZ=Europe/Amsterdam date --date="$DATE"
TZ=Europe/London date --date="$DATE"
TZ=UTC date --date="$DATE"
TZ=America/Denver date --date="$DATE"
TZ=America/Los_Angeles date --date="$DATE"

