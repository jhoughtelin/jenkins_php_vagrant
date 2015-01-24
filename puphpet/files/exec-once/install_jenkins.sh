#!/bin/bash

#
# Install Jenkins
#

if [[ ! -f /.puphpet-stuff/jenkins-apt-source-added ]]; then
    echo "###   Adding Apt package source for Jenkins"
    # Add Key
    wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
    # Add Repo to sources list
    echo "deb http://pkg.jenkins-ci.org/debian binary/" >> /etc/apt/sources.list
    touch /.puphpet-stuff/jenkins-apt-source-added
fi

echo "### Updating Apt"
apt-get update >/dev/null
echo "### Installing Jenkins"
apt-get --yes --force-yes install jenkins
#/etc/init.d/jenkins stop

#echo "### Replace Jenkins default startup configuration"
#mv /etc/default/jenkins /etc/default/jenkins.orig
#cp /home/jenkins/conf/jenkins.conf /etc/default/jenkins

#echo "### Move jenkins home folder"
#cp -R /var/lib/jenkins /home/jenkins
#usermod -d /home/jenkins jenkins

#echo "### Starting Jenkins with permanent config"
#/etc/init.d/jenkins start

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

echo "### Manually updating Jenkins update-center"
curl -L http://updates.jenkins-ci.org/update-center.json | sed '1d;$d' | curl -X POST -H 'Accept: application/json' -d @- http://localhost:8080/updateCenter/byId/default/postBack
echo "### Try to install the PHP Plugins for Jenkins."
java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin checkstyle cloverphp dry htmlpublisher jdepend plot pmd violations xunit php git phing build-pipeline-plugin dashboard-view
echo "### Restarting Jenkins."
java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart