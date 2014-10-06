#!/bin/bash
apt-get install sudo
echo "installation of sudo ended"
echo "Can you give me your login ? please"
read login
cp /etc/sudoers /etc/sudoers.bak
chmod 660 /etc/sudoers
echo -e "$login \t ALL=(ALL) \t ALL" >> /etc/sudoers
chmod 440 /etc/sudoers
echo "config of sudo ended"
exit
