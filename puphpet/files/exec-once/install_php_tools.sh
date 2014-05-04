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

# Update PEAR (Although it should already be current)
pear upgrade PEAR