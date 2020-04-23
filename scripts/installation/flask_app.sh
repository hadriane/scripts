#!/bin/bash

yum -y install python3 python3-devel.x86_64 mysql-devel gcc-c++.x86_64 mariadb-server git
pip3 install Flask
systemctl enable mariadb
systemctl start mariadb
