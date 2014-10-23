#!/bin/bash
Main()
{
echo "-----------------------------------"
echo "S C R I P T  B A C K U P USING RSYNC"
echo "-----------------------------------"
echo
echo "Option:"
echo "i     installation or verification of rsync program"
echo "f     Folder to Folder"
echo "s     ssh"
echo "q     quit"
echo 
echo "Enter your choice:"
read option


case $option in
        i) install             ;;
        f) folder               ;;
        s) ssh               ;;
        q) exit                 ;;
        *) echo "invalid choice" ; Main    ;;
esac
}

install()
{
        
        echo "-----------------------------------"
        echo ""
        echo "-----------------------------------"
        echo
        echo "Option:"
        echo "v     verification if rsync is installed or not"
        echo "i     install rsyn on your Pc"
        echo "b     back to main menu"
        echo "Enter your choice"
        echo
        read option

case $option in
        v) verify           ;;
        i) installrsync     ;;
        b) Main             ;;
        *) echo "invalid choice" ; install  ;;
esac

}

installrsync()
{
    if [ -f /etc/redhat-release ]; then
        sudo yum install rsync
       # if yum install rsync; then 
       #     echo "installation of rsync ended"
       # else
       #     echo "failed"
       # fi
    elif [ -f /etc/debian_version]; then
        sudo apt-get install rsync
       # if apt-get install rsync; then
       #     echo "installation of rsync ended"
       # else
       #     echo "failed"
       # fi
    else
        echo "the script is not supported yet for the moment only on fedora and ubuntu"
    fi
}

verify()
{
    if [ -f /etc/redhat-release ]; then
        rpm -qa | grep -i rsync
    elif [ -f /etc/debian_version ]; then
        dpkg-query -l 'rsync*'
    else
        echo "the script is not supported yet for the moment only on fedora and ubuntu"
    fi 

}
Main


