#!/bin/bash

yum -y install python3 python3-devel.x86_64 mysql-devel gcc-c++.x86_64 mariadb-server git
pip3 install Flask pyyaml flask_mysqldb
systemctl enable mariadb
systemctl start mariadb

mysql -e "DROP USER ''@'localhost'"
mysql -e "DROP USER ''@'$(hostname)'"
mysql -e "FLUSH PRIVILEGES"
mysql -e "CREATE DATABASE flaskapp"
mysql -e "CREATE USER 'flaskapp'@'%' IDENTIFIED BY 'StaySafe'"
mysql -e "GRANT ALL PRIVILEGES ON flaskapp.* TO 'flaskapp'@'%' IDENTIFIED BY 'StaySafe'"
mysql -e "FLUSH PRIVILEGES"
mysql -e "USE flaskapp; CREATE TABLE users(name varchar(20), email varchar(40))"
mysql -e "UPDATE mysql.user SET Password = PASSWORD('StaySafe') WHERE User = 'root'"
