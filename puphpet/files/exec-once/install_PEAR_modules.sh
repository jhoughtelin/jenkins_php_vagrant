#!/bin/bash

#
# PEAR Installables
#
echo "# "
echo "# Installing PEAR Packages."
echo "# "

echo "# Discovering Package Channels."
pear config-set auto_discover 1
pear channel-discover pear.phpmd.orgf
pear channel-discover pear.pdepend.org
pear channel-discover pear.phing.info
pear channel-discover pear.phpdoc.org

echo "# Installing Archive_Tar"
pear install Archive_Tar

echo "# Installing VersionControl_Git"
pear install VersionControl_Git

echo "# Installing HTTP_Request2"
pear install HTTP_Request2

echo "# Installing PHP Code Sniffer"
pear install PHP_CodeSniffer

echo "# Installing PHP Depend"
pear install pdepend/PHP_Depend

echo "# Installing PHP Documentor"
pear install phpdoc/phpDocumentor

echo "# Installing PHP Mess Detector"
pear install --alldeps phpmd/PHP_PMD

echo "# Installing PHP_Timer"
pear install phpunit/PHP_Timer

echo "# Installing Copy/Paste Detector"
pear install phpunit/phpcpd

echo "# Installing PHP PHPLoc."
pear install phpunit/phploc

echo "# Installing PHP Dead Code Detector."
#pear install phpunit/phpdcd-beta
pear -d preferred_state=beta install phpunit/phpdcd

echo "# Installing DbUnit"
pear install phpunit/DbUnit

echo "# Installing PHPUnit"
pear install pear.phpunit.de/PHPUnit

echo "# Installing Phing."
pear install phing/phing