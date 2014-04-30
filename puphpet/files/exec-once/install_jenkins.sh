#!/bin/bash

#
# Install Jenkins
#

echo "###   Adding Apt package source for Jenkins"

# Add Key
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -

# Add Repo to sources list
# @TODO - This should not happen twice! Even if the script is run twice or prov happens twice. this shouldn't happen twice
echo "deb http://pkg.jenkins-ci.org/debian binary/" >> /etc/apt/sources.list

# Update APT
echo "###   Updating Apt"
apt-get update >/dev/null

# Install Jenkins
echo "### Installing Jenkins"
apt-get --yes --force-yes install jenkins > /.puphpet-stuff/jenkins_install.log

# Establish Jenkins startup on boot
update-rc.d jenkins defaults

# Start Jenkins
echo "###   Starting Jenkins for the first time..."
/etc/init.d/jenkins start

# Wait a moment for jenkins to finish starting...
# ...  This is dumb and needs to be fixed.
echo "### and we wait... 30s. "
sleep 10s
echo " 20s. "
sleep 10s
echo " 10s. "
sleep 10s
echo " Hopefully Jenkins is alive now.  GO GO GO! ";

# Get Jenkins CLI Tool
cd /home/jenkins
if [[ ! -f /home/jenkins/jenkins-cli.jar ]]; then
	echo "# Copying Jenkins Command Line Tool Shared folder ./jenkins/ on Host"
	wget http://localhost:8080/jnlpJars/jenkins-cli.jar
fi

# Force update Jenkins update center
curl -L http://updates.jenkins-ci.org/update-center.json | sed '1d;$d' | curl -X POST -H 'Accept: application/json' -d @- http://localhost:8080/updateCenter/byId/default/postBack

# Install Jenkins Plugins
echo "### Try to install the PHP Plugins for Jenkins."
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin checkstyle cloverphp dry htmlpublisher jdepend plot pmd violations xunit php git phing

# Restart Jenkins
java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart

# Forward browsers on apache's port 80 to Jenkins 8080 by default.
echo "<?php header('location: http://'.\$_SERVER['SERVER_NAME'].':8080');" > /var/www/index.php
rm -f /var/www/index.html