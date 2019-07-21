# record-on-retropie
Experimental shell scripts to install ffmpeg and record on retropie.

Half of this code is likely obsolete. If you have Raspbian Stretch or RetroPie 4.4 or newer, you should be able to install ffmpeg from the terminal using apt-get
``` sudo apt-get install ffmpeg ```
 

This did not work when I tried it. However, I will leave this up in case anyone wants to try it or edit it.

Code is from http://selsine.com/2016/10/15/how-to-record-a-game-play-video-from-a-retropie/
and https://retroresolution.com/2016/05/31/compiling-software-from-source-code-on-the-raspberry-pi-the-ffmpeg-suite/
Be sure to read through those pages before proceeding.

After executing the script follow the directions at http://selsine.com/2016/10/15/how-to-record-a-game-play-video-from-a-retropie/ to mount a USB drive to record to. 


Installation Script
------------
```
sh curl -L https://goo.gl/GWSwuW | bash
```
or
```
wget --no-check-certificate https://goo.gl/GWSwuW -O - | bash
```
