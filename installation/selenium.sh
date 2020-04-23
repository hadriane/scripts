#!/bin/bash

yum -y install python3 wget bzip2
yum -y install firefox Xvfb libXfont Xorg
yum -y groupinstall "X Window System" "Desktop" "Fonts" "General Purpose Desktop"
pip3 install selenium
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
bzip2 -d /usr/local/share/phantomjs-2.1.1-linux-x86_64.tar.bz2
tar -xvf /usr/local/share/phantomjs-2.1.1-linux-x86_64.tar -C /usr/local/share
ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin
rm -f phantomjs-2.1.1-linux-x86_64.tar
tar xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /usr/local/share/
ln -sf /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin
Xvfb :99 -ac -screen 0 1280x1024x24 &
export DISPLAY=:99
