#!/bin/bash

#sudo apt-get update

#sudo apt-get install -y libapache2-mod-php

sudo chown -R vagrant:vagrant /var/www/html

cp /vagrant/info.php /var/www/html/

