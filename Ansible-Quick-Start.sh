#!/bin/bash
path="$1"
newdir="${path}ansible/"
file="Ansible-Quick-Start.zip"
wfile="$newdir$file"
echo "$wfile"
yum -y install epel-release
yum -y install ansible
if [ $? -eq 0 ] ; then echo 'Ansible Installed' ; else echo 'Error Installing Ansible'; exit ; fi
yum -y install unzip
if [ $? -eq 0 ] ; then echo 'Unzip Installed' ; else echo 'Error Installing Unzip'; exit ; fi
yum -y install git
if [ $? -eq 0 ] ; then echo 'Git Installed' ; else echo 'Error Installing Git'; exit ; fi
git clone https://github.com/teo1927/Ansible-Quick-Start.git $newdir
cd $newdir
unzip Ansible-Quick-Start.zip
rm $wfile
