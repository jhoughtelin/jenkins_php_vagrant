#!/bin/bash

#
# Install PHPDox
#
# wget http://phpdox.de/releases/phpdox.phar
# chmod +x phpdox.phar
# mv phpdox.phar /usr/local/bin/phpdox

# Install PHPUnit
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
mv phpunit.phar /usr/local/bin/phpunit

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install PHP Copy/Paste Detector
wget https://phar.phpunit.de/phpcpd.phar
chmod +x phpcpd.phar
mv phpcpd.phar /usr/local/bin/phpcpd

# Install PHP Dead Code Detector
wget https://phar.phpunit.de/phpdcd.phar
chmod +x phpdcd.phar
mv phpdcd.phar /usr/local/bin/phpdcd

# Install PHPloc
wget https://phar.phpunit.de/phploc.phar
chmod +x phploc.phar
mv phploc.phar /usr/local/bin/phploc

# Install PHPDox
wget http://phpdox.de/releases/phpdox.phar
chmod +x phpdox.phar
mv phpdox.phar /usr/local/bin/phpdox

# Install PHPMD
wget -c http://static.phpmd.org/php/latest/phpmd.phar
chmod +x phpmd.phar
mv phpmd.phar /usr/local/bin/phpmd

# Install PDepend
wget http://static.pdepend.org/php/latest/pdepend.phar
chmod +x pdepend.phar
mv pdepend.phar /usr/local/bin/pdepend

# Update PEAR (Although it should already be current)
pear upgrade PEAR
