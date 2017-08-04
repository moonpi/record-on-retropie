#!/bin/bash

echo "This script is from the Mark Mruss selsine site http://selsine.com/2016/10/15/how-to-record-a-game-play-video-from-a-retropie/"
 
cd ~/RetroPie-Setup/
# remove the config that disables ffmpeg on the RPI
sed -i "s/--disable-ffmpeg//" scriptmodules/emulators/retroarch.sh
# build new retroarch from source
sudo ./retropie_packages.sh retroarch
# put the file back how it was
git checkout scriptmodules/emulators/retroarch.sh
