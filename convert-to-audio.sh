#!/bin/bash

	
find . -type f -iname "*.webm" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -ab 256k -ar 44100 -y "${FILE%.webm}.mp3";' _ '{}' \;
