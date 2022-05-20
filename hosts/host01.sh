#!/bin/bash

echo "-----------------------"
echo "-----FILE HOSTS-----"
echo "-----------------------"

echo TASK [01] "Update file /etc/hosts"

sed -i "s/^127.*/192.168.56.3 host01 localhost/g" /etc/hosts