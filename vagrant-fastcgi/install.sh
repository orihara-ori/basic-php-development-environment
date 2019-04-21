#!/bin/bash

sudo apt-get update

sudo apt-get install -y nginx php-fpm

sudo chown -R vagrant:vagrant /var/www/html

cp /vagrant/info.php /var/www/html/

sudo rm /etc/nginx/sites-enabled/default
sudo cp /vagrant/php-fpm.conf /etc/nginx/sites-available/php-fpm.conf
sudo ln -s /etc/nginx/sites-available/php-fpm.conf /etc/nginx/sites-enabled/php-fpm.conf
sudo /etc/init.d/nginx restart
