#Update source-list of dependencies
echo -e "====================================\n"
echo -e "\n Updating source lists to download dependencies\n"
echo -e "====================================\n"
sudo apt-get update 

echo  -e "\nInstalling git ...\n"
sudo apt-get -y install git

echo -e "Making tool directory"
sudo mkdir /home/pi/tools

echo -e "Making recording directory in RetroPie folder"
mkdir /home/pi/RetroPie/recording


sudo git clone git://github.com/moonpi/record-on-retropie.git ~/home/pi/tools


sudo chmod +x ~/home/pi/tools/ffmpeg-install.sh
sudo chmod +x ~/home/pi/tools/build-retroarch-with-ffmpeg.sh

echo -e "installing ffmpeg codecs for recording"
sudo sh ~/home/pi/tools/ffmpeg-install.sh

# Rebuild RetroPie

echo -e "rebuilding retropie"
sh ~/home/pi/tools/build-retroarch-with-ffmpeg.sh

sudo mv config.cfg ~/home/pi/RetroPie/recording/config.cfg
