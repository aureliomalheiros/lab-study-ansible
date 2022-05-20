#!/bin/bash

echo "-----------------------"
echo "-----FILE HOSTS-----"
echo "-----------------------"

echo TASK [01] "Update file /etc/hosts"

sed -i "s/^127.*/192.168.56.2 ansible localhost/g" /etc/hosts

echo TASK [02] "Install Ansible"

sudo apt update 
sudo apt install -y python3-pip
sudo pip3 install ansible