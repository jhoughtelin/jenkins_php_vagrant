#!/bin/bash

#
# Install Jenkins
#

# Add Key
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

# Add Repo to sources list
echo "deb http://pkg.jenkins-ci.org/debian binary/" >> /etc/apt/sources.list

# Update APT
apt-get update

# Install Jenkins
apt-get --yes --force-yes install jenkins

# Start Jenkins
/etc/init.d/jenkins start

# Get Jenkins CLI Tool
cd /home/jenkins
wget http://localhost:8080/jnlpJars/jenkins-cli.jar

# Install Plugins
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin checkstyle cloverphp dry htmlpublisher jdepend plot pmd violations xunit php

# Restart Jenkins
java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart
