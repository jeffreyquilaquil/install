#!/bin/sh

crontab ./crontab

#install sms tools and monitoring
cp -R ./lib-mm /usr/local/src
cp -R ./smstools /usr/local/src
cp -R ./sms /var/spool
cp ./smsd/smsd_single.conf /etc/smsd.conf
cp ./smsd/mysmsd.php /usr/local/bin

chmod -R 777 /usr/local/src/lib-mm
chmod -R 777 /usr/local/src/smstools
chmod -R 777 /var/spool/sms
chmod -R 777 /usr/local/bin/mysmsd.php
dos2unix /usr/local/bin/mysmsd.php

cd /usr/local/src/lib-mm
./configure --prefix=/usr
make
make test
make install
make clean smsd

cd /usr/local/src/smstools
make
make install
update-rc.d sms3 defaults

service udev restart
udevadm trigger
service sms3 restart