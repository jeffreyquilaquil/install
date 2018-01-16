#!/bin/bash
# Debian-Based Linux Server Installation Script

printf "\033c"
printf "\n"
printf "Debian-Based Linux Server Installation Script (2017/08/08).\n"
printf "[$(date)] Installation started. \n"

apt-get update
apt-get upgrade -y
apt-get install build-essential -y
apt-get install lamp-server^ -y
a2enmod rewrite
service apache2 restart

printf "*************************************\n"
printf "Installing tools and dependencies ...\n"
printf "*************************************\n"

apt-get install curl xvfb wkhtmltopdf unzip gettext -y

echo 'exec xvfb-run -a -s "-screen 0 640x480x16" wkhtmltopdf "$@"' | tee /usr/local/bin/wkhtmltopdf.sh > /dev/null
chmod a+x /usr/local/bin/wkhtmltopdf.sh

printf "*************************************\n"
printf "Installing PHP extensions ...\n"
printf "*************************************\n"

apt-get install php-bz2 php-curl php-fileinfo php-gd php-mbstring php-mcrypt php-mysqli php-xml php-intl php-exif php-sockets php-gettext -y
phpenmod bz2 curl fileinfo gd mbstring mcrypt mysqli xml intl exif sockets gettext

printf "*************************************\n"
printf "Copying web applications ...\n"
printf "*************************************\n"

mkdir /var/web

chmod -R 777 /var/web
chmod -R 777 /etc/apache2/sites-available
chmod -R 777 /etc/php/7.0/apache2

mkdir /var/web/pm
tar -zxvf ./pm.tar.bz2 -C /var/web/pm

mkdir /var/web/impression
tar -zxvf ./impression.tar.bz2 -C /var/web/impression

mkdir /var/web/trace
tar -zxvf ./trace.tar.bz2 -C /var/web/trace

mkdir /var/web/toms
tar -zxvf ./toms.tar.bz2 -C /var/web/toms

chmod -R 777 /var/web

printf "*************************************\n"
printf "Configuring PHP and Apache ...\n"
printf "*************************************\n"

rm /etc/apache2/sites-available/000-default.conf
cp ./000-default.conf /etc/apache2/sites-available/

rm /etc/php/7.0/apache2/php.ini
cp ./php.ini /etc/php/7.0/apache2/

service apache2 restart

printf "*************************************\n"
printf "Creating databases ...\n"
printf "*************************************\n"

mysql -u root -pasdf < ./create_users.sql
mysql -u root -pasdf -h localhost impression < ./impression.sql
mysql -u root -pasdf -h localhost toms_db < ./toms_db.sql
mysql -u root -pasdf -h localhost trace_db < ./trace_db.sql


printf "[$(date)] Installation ended.\n"
printf "All Done!!!\n"