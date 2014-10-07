#!/bin/bash
:'

Do not forget to execute this script by using root privilege
This script designed to install and config sudo under debian 7

'

#Installation of sudo 
if apt-get install sudo; then 
    echo "installation of sudo ended"
else
    echo "failed"
fi

#Configuration of /etc/sudoers
echo "Can you give me your login ? please"
read login
#make backup for file /etc/sudoers

cp /etc/sudoers /etc/sudoers.bak

#change permission for applying change
chmod 660 /etc/sudoers

if echo -e "$login \t ALL=(ALL) \t ALL" >> /etc/sudoers ; then
    echo "ok"
else
    echo "I can not add modification to /etc/sudoers file"
fi

#restore permission
chmod 440 /etc/sudoers
echo "config of sudo ended"
exit
