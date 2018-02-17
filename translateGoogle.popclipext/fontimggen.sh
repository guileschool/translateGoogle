#!/bin/bash

for name in ko en ar cs da de el es fi fr he hu it ja nb nl nn pl pt ru sk sl sv tr zh zh ad; do convert -size 256x256 -background transparent -gravity Center -fill black -font arial.ttf -pointsize 240 label:"$name" locale_$name.png;done

