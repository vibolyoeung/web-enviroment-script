#!/bin/bash
STAMP="/etc/apache2/.environment"
if [ ! -f $STAMP ]; then
  export DEBIAN_FRONTEND="noninteractive" ; set -e -x

  APT="apt-get -y -o DPkg::Options::=--force-confdef -o DPkg::Options::=--force-confold -o APT::Get::force-yes=true"

  #Avoid a few common cases of dependency version drift
  sudo $APT update
  #Install apache
  sudo $APT install apache2

  #Install mysql
  sudo $APT install mysql-server libapache2-mod-auth-mysql php5-mysql

  sudo mysql_install_db
  sudo /usr/bin/mysql_secure_installation
  sudo $APT install php5 php5-mysql libapache2-mod-php5
  apt-cache search php5-
  sudo service apache2 restart
  sudo touch $STAMP
fi
