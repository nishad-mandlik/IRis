#!/bin/sh

#Install LAMP Server (Apache 2, PHP, MySQL)
sudo apt update
sudo apt --assume-yes install apache2
sudo apt --assume-yes install mysql-server
sudo apt --assume-yes install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php
sudo apt --assume-yes install phpmyadmin
sudo ln -s /usr/share/phpmyadmin /var/www/html

#Install PyQt4
sudo apt-get install python-qt4

#Make Directory In /var/www/html/
sudo mkdir /var/www/html/Login_v2/

#Copy All Files To Apache2 Directory
cp -R ./Login_v2/* /var/www/html/Login_v2/

#Own The Site Directory
sudo chown -R $(whoami) /var/www/html/Login_v2

#Change Permissions to 777
sudo chmod 777 -R /var/www/html/Login_v2

#Ask User For Password Of MySQL & PHPMyAdmin
read -sp 'Please Enter The Password Used For MySQL: ' userPass

#Change The Password In The

#Edit .bashrc and rc.local files
