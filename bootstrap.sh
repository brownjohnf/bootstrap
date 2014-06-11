#!/bin/bash

cd ~
sudo echo "deb http://downloads.hipchat.com/linux/apt stable main" > \
  /etc/apt/sources.list.d/atlassian-hipchat.list
sudo wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
sudo aptitude update && sudo aptitude -y safe-upgrade
sudo aptitude install -y vim htop firefox chromium-browser screen xinit xterm build-essential git links irssi xchat pcmanfm x11-apps vlc i3
echo "exec i3" > .xinitrc
mkdir -p ~/.i3/config
cp /etc/i3/config ~/.i3/config
wget "http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3059_i386.deb"
sudo dpkg -i sublime-text_build-3059_i386.deb
mkdir -p repos
mkdir -p .ssh

