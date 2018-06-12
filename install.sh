#!/bin/bash

function statusBanner
{
    echo ""
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "~ $*"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo ""
}

statusBanner "This script will setup INDI on cygwin after cygwin and the dependencies are installed using the install.bat script"

read -p "Are you ready to proceed (y/n)? " proceed

if [ "$proceed" != "y" ]
then
	exit
fi

# Installs INDI bleeding edge and debugging
statusBanner "Installing INDI and KStars"
sudo apt-add-repository ppa:mutlaqja/ppa -y
sudo apt-get update
sudo apt-get -y install indi-full
sudo apt-get -y install indi-dbg

# Installs the General Star Catalog if you plan on using the simulators to test (If not, you can comment this line out with a #)
statusBanner "Installing GSC"
sudo apt-get -y install gsc

# Installs the Astrometry.net package for supporting offline plate solves.  If you just want the online solver, comment this out with a #.
statusBanner "Installing Astrometry.net"
sudo apt-get -y install astrometry.net

statusBanner "Installing indiweb"

# This will install pip and the headers so you can use it in the next step
sudo apt-get -y install python-pip
sudo apt-get -y install python-dev

# Setuptools may bee needed in order to install indiweb on some 64 bit systems
sudo apt-get -y install python-setuptools
sudo -H pip install setuptools --upgrade

# Wheel might not be installed on some 64 bit systems
sudo -H pip install wheel

# This will install INDI Web Manager
sudo -H pip install indiweb