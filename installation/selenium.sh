#!/bin/bash

yum -y install python3
yum -y install firefox Xvfb libXfont Xorg
yum -y groupinstall "X Window System" "Desktop" "Fonts" "General Purpose Desktop"
Xvfb :99 -ac -screen 0 1280x1024x24 &
export DISPLAY=:99
