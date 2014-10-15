#! /bin/bash
#Determinate distribution

if [ -f /etc/redhat-release ] ; then
    distro=redhat
elif [ -f /etc/debian_version ] ; then
    distro=debian
else
    distro=unknown
fi
echo $distro
