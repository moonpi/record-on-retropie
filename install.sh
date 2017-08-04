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

cd /home/pi/tools
sudo git clone git://github.com/punkbass/record-on-retropie.git /home/pi/tools


sudo chmod +x ffmpeg-install.sh
sudo chmod +x /home/pi/tools/build-retroarch-with-ffmpeg.sh

echo -e "installing ffmpeg codecs for recording"
sudo /home/pi/tools/ffmpeg-install.sh

# Rebuild RetroPie

echo -e "rebuilding retropie"
/home/pi/tools/build-retroarch-with-ffmpeg.sh

sudo mv config.cfg ~/home/pi/RetroPie/recording