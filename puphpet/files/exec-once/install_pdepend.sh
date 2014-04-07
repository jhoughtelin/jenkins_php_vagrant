#!/bin/bash

#
# Install PDepend
#
wget http://static.pdepend.org/php/latest/pdepend.phar
chmod +x pdepend.phar
mv pdepend.phar /usr/local/bin/pdepend
