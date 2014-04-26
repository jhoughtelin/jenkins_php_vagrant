#!/bin/bash

#
# Install PHPLoc
#

wget https://phar.phpunit.de/phploc.phar
chmod +x phploc.phar
mv phploc.phar /usr/local/bin/phploc