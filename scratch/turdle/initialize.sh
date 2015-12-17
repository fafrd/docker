#!/bin/bash

# lemp
apt-get update
apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
	mysql-server mysql-client php5-fpm nginx-core git
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
mkdir -p /var/www/turdle
ln -s /usr/share/phpmyadmin /var/www/turdle/phpmyadmin

apt-get install phpmyadmin -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"

# git clone turdle 
git clone https://github.com/fafrd/turdle.git
mv turdle /var/www/turdle

# start
#service nginx start
service php5-fpm start
service mysql start

# import database schema
sleep 5
mysql -u root < /tmp/turdle.sql

