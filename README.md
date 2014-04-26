Jenkins VM for PHP w/Vagrant!
=============================

This is an extremely easy to use & very quick starting point for those
wanting to take Jenkins Continuous Integration Server for a spin in 
your PHP app development life-cycle.

Simple clone this repository, navigate to the root directory and 'vagrant up'.
The initial provisioning of the virtual machine can take a good 10 minutes
or longer depending on your internet connection and workstation but every use
after the initial spins up much quicker.

1. `git clone https://github.com/jhoughtelin/jenkins_php_vagrant.git`  
2. `cd jenkins_php_vagrant`  
3. `vagrant up`  

Then simply access your local Jenkins continuous integration virtual machine with
a web browser http://10.11.12.13

## Dependancies / Requirements ##
You must have the following software installed in order for this to work.
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://VagrantUp.com)

## Inside the box (Specs) 
This VM is based on a Debian Wheezy 7.2 x64 box furnished by http://puphpet.com along with
the original vagrant+puppet configuration. 

### CI Server
* [Jenkins](https://wiki.jenkins-ci.org)
    * checkstyle plugin
    * cloverphp  plugin
    * dry  plugin
    * htmlpublisher  plugin
    * jdepend  plugin
    * plot  plugin
    * pmd  plugin
    * violations  plugin
    * xunit  plugin
    * php  plugin
    * git plugin

### Environment
* PHP 5.5
    * intl
    * cli
    * mcrypt
    * curl
    * memcache
    * memcached
    * imagick

* Apache (Port 80)
    * ReWrite
    * PHP

### Tools & Resources
* PHP CodeSniffer
* PHP DocBlock Generator
* PHP Unit
* PHP Loc
* PHP MessDetector
* PHPDox
* PDepend
* PHP Copy/Paste Detector

* Composer