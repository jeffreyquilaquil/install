#!/bin/bash
# Debian-Based Linux Server Installation Script

printf "\033c"
printf "\n"
printf "Debian-Based Linux Server Installation Script (2017/08/08).\n"
printf "[$(date)] Installation started. \n"
printf "*************************************\n"
printf "Installing tools and dependencies ...\n"
printf "*************************************\n"

# apt-get install curl xvfb wkhtmltopdf unzip gettext ttf-mscorefonts-installer -y
apt-get install ttf-mscorefonts-installer dos2unix -y 

printf "*************************************\n"
printf "Copying web applications ...\n"
printf "*************************************\n"

unzip ./handa.zip -d /var/web

chmod -R 777 /var/web

printf "*************************************\n"
printf "Configuring PHP and Apache ...\n"
printf "*************************************\n"

rm /etc/apache2/sites-available/000-default.conf
cp ./000-default.conf /etc/apache2/sites-available/

service apache2 restart

printf "*************************************\n"
printf "Creating databases ...\n"
printf "*************************************\n"

mysql -u root -pasdf < ./create_users.sql
mysql -u root -pasdf -h localhost handa_db < ./handa_db.sql

printf "[$(date)] Installation ended.\n"
printf "All Done!!!\n"