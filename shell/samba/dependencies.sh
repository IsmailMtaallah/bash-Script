#!/bin/bash
#install under debian 7
sudo apt-get update && sudo apt-get upgrade
echo "your system is up to date "
sudo apt-get install -y build-essential python-dev pkg-config libcups2-dev cups krb5-user docbook-xsl libldap2-dev libattr1-dev libacl1-dev attr python-dnspython libreadline-dev libbsd-dev libblkid-dev libpopt-dev cups git acl gdb xsltproc libsasl2-dev libaio-dev libpam-dev valgrind resolvconf autoconf ldap-utils ntp isc-dhcp-server
echo "Installation of dependencies finished"
 
