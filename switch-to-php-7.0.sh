#!/bin/bash

echo "* Disabling Apache PHP 7.1 module..."
sudo a2dismod php7.1 > /dev/null

echo "* Disabling Apache PHP 7.2 module..."
sudo a2dismod php7.2 > /dev/null

echo "* Disabling Apache PHP 7.3 module..."
sudo a2dismod php7.3 > /dev/null

echo "* Disabling Apache PHP 7.4 module..."
sudo a2dismod php7.4 > /dev/null

echo "* Enabling Apache PHP 7.0 module..."
sudo a2enmod php7.0 > /dev/null

echo "* Restarting Apache..."
sudo service apache2 restart > /dev/null

echo "* Switching CLI PHP to 7.0..."
sudo update-alternatives --set php /usr/bin/php7.0 > /dev/null

echo "* Switch to PHP 7.0 complete."
