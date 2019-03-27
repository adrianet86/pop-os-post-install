# First you update your system
sudo apt update && sudo apt-get dist-upgrade

# Terminator
sudo apt-get install terminator

# Git setup
printf "Enter your git user name: \n"
read username
printf "Enter your git email: \n"
read email
git config --global user.name ${username}
git config --global user.email ${email}

# Gnome Tweak
sudo apt-get install gnome-tweak-tool

# Gnome extensions and favourite
sudo apt-get install gnome-shell-extensions
sudo apt install chrome-gnome-shell
# https://extensions.gnome.org/extension/307/dash-to-dock/
# https://extensions.gnome.org/extension/55/media-player-indicator/
# https://extensions.gnome.org/extension/751/audio-output-switcher/
# https://extensions.gnome.org/extension/1065/docker-status/
# https://extensions.gnome.org/extension/442/drop-down-terminal/

# Synapse launcher
sudo apt install synapse

# Bleachbit
sudo apt install bleachbit

# Rhythmbox
sudo add-apt-repository ppa:ubuntuhandbook1/apps
sudo apt-get update
sudo apt-get install rhythmbox

# Google Chrome
sudo apt install libxss1 libappindicator1 libindicator7
## 1. downloading last stable package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
## 2. installing package
sudo dpkg -i google-chrome-stable_current_amd64.deb
## 3. fixing broken dependencies
sudo apt install -f
## 4. free up space
rm google-chrome*.deb

# TODO: download firefox developer edition

# Copyq
sudo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install copyq

#Install Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# Docker
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo usermod -a -G docker $USER

# Docker-compose
# 1. Run this command to download the latest version of Docker Compose:
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# 2. Run this command to download the latest version of Docker Compose:
sudo chmod +x /usr/local/bin/docker-compose

# Atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom

# Acestream
# https://www.cnx-software.com/2018/04/15/how-to-install-and-use-acestream-easily-in-ubuntu-mint-linux/
sudo apt install snapd
sudo snap install acestreamplayer
sudo apt remove snapd

# ENPASS
sudo -i
echo "deb https://apt.enpass.io/ stable main" > \
  /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -
apt-get update
apt-get install enpass

# VirtualBox
## 1. downloading package
#wget http://download.virtualbox.org/virtualbox/5.1.6/VirtualBox-5.1.6-110634-Linux_amd64.run
## 2. installing package into /opt
#sudo sh VirtualBox-5.1.6-110634-Linux_amd64.run
## 3. downloading extension pack
#wget http://download.virtualbox.org/virtualbox/5.1.6/Oracle_VM_VirtualBox_Extension_Pack-5.1.6-110634.vbox-extpack
## 4. install extension pack
#sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.6-110634.vbox-extpack
## 5. listing installed extension packs
#sudo VBoxManage list extpacks

# Reduce overheating and improve battery life
# sudo add-apt-repository ppa:linrunner/tlp
# sudo apt-get update
# sudo apt-get install tlp tlp-rdw
# sudo tlp start

# As I always have /home in a different HD partition, steps below are for a fresh installation
# cd ~;
# mkdir software;
# Download software
# cd ~/Downloads;
# Postman
# https://www.getpostman.com/apps
# wget https://app.getpostman.com/app/download/linux64?_ga=2.229117084.1404834430.1535957793-2051387000.1535957793

# Phpstorm
# https://www.jetbrains.com/phpstorm/download/#section=linux
# wget https://www.jetbrains.com/phpstorm/download/download-thanks.html?platform=linux

# Elastic Search memory problem on docker containers
# https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html

# PhpStorm memory problems
# https://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit

sudo apt autoremove
sudo apt autoclean
