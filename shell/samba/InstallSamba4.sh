#!/bin/bash



#Download samba source from git repo
if mkdir ~/installSamba; cd ~/installSamba; then
	echo "creation of install directory done"
else
	echo "creation of install directory failed"
fi

if git clone -b v4-0-stable git://git.samba.org/samba.git samba4; then
	echo "clone the samba 4 stable branch from official project's repository, under /home/login/installSamba"
else
	echo "failed to clone samba 4 project"
fi

if cd samba ; then 
    echo "you are now under samba4 project"
else 
    echo "I can't find samba4 project"
fi

#Configure, compile and install samba from source

if ./configure --enable-debug --enable-selftest;  then
    echo "the configuration done"
else
    echo "I can not configure samba4 project"
fi

if make ; then
    echo "compilation done"
else 
    echo "compilation failed"
fi

if sudo make quicktest; then
    echo ""
else
    echo ""
fi
