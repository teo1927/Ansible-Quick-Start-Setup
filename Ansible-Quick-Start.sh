#!/bin/bash

path=/Path/To/Desired/Directory/

yum -y install git
if [ $? -eq 0 ] ; then echo 'Git Installed' ; else echo 'Error Installing Git'; exit ; fi

git clone https://github.com/teo1927/Ansible-Quick-Start.git $path

cd $path

unzip Ansible-Quick-Start.zip

