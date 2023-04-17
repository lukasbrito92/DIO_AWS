#!/bin/bash

apt update
apt upgrade -y

apt install apache2 -y
systemctl start apache2d
apt install unzip -y

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip /tmp/main.zip -d /var/www/html/
