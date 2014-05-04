Jenkins VM for PHP w/Vagrant!
=============================
This is an easy to use, very quick starting point for those
wanting to test out using a Jenkins Continuous Integration Server in
your PHP app development life-cycle.

Simply clone this repository, navigate to the root directory and issue 'vagrant up' from the command line.
The initial provisioning of the virtual machine can take in excess of 10 minutes
or longer depending on your internet connection & computer's specs but rest easy knowing that
the virtual machine only needs to be provisioned once. It'll quickly turn on 'Vagrant up' and off
'vagrant halt' after the initial setup is complete.

Get started with Jenkins for PHP in 10 minutes:
===============================================
1. `git clone https://github.com/jhoughtelin/jenkins_php_vagrant.git`
2. `cd jenkins_php_vagrant`  
3. `vagrant up`  

Then simply access your local Jenkins continuous integration virtual machine with
a web browser (http://10.11.12.13) or (http://localhost:8000)

## Dependancies / Requirements ##
You must have the following software installed in order for this to work.
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://VagrantUp.com)

## Inside the box (Specs) 
This VM is based on a Debian Wheezy 7.2 x64 box furnished by http://puphpet.com along with
the original vagrant+puppet scripts.

### OS Packages
* Vim
* Screen
* zsh
* Ant
* Git

### CI Server
* [Jenkins](https://wiki.jenkins-ci.org)
    * Checkstyle plugin
    * Clover php plugin
    * DRY plugin
    * Html Publisher  plugin
    * JDepend plugin
    * Plot plugin
    * PMD plugin
    * Violations plugin
    * XUnit plugin
    * PHP plugin
    * Git plugin
    * Dashboard-View Plugin
    * Build-Pipeline Plugin
    
### Environment
* PHP 5.5
    * intl
    * cli
    * mcrypt
    * curl
    * memcache
    * memcached
    * imagick
    * xsl
* Apache (Port 80)
    * ReWrite
    * PHP

### Tools & Resources
* Composer
* PHP Unit
* PEAR
    * PHP Code Sniffer
    * PHP Documentor
    * Phing
    * PHPLoc
    * PHP Mess Detector
    * PDepend
    * PHP Copy/Paste Detector
    * PHPDox
    * fDOMDocument
    * DBUnit
* Pecl
    * Pecl_http