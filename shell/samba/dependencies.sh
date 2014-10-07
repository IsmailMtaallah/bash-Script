#!/bin/bash
#install under debian 7

#update system
if sudo apt-get update && sudo apt-get upgrade; then
	echo "your system is now up to date"
else 
	echo "I can not update your system, thank you to verify your connection"
fi

#install dependencies 
if sudo apt-get install -y build-essential python-dev pkg-config libcups2-dev cups krb5-user docbook-xsl libldap2-dev libattr1-dev libacl1-dev attr python-dnspython libreadline-dev libbsd-dev libblkid-dev libpopt-dev cups git acl gdb xsltproc libsasl2-dev libaio-dev libpam-dev valgrind resolvconf autoconf ldap-utils ntp isc-dhcp-server ; then
	echo "Installation of dependencies finished"
else 
	echo "I can not install all dependencies"
fi

