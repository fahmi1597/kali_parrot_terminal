#!/bin/bash

htbip=$(ifconfig tun0 2>/dev/null | grep netmask | awk '{print $2}')
showip=$(ifconfig eth0 2>/dev/null | grep netmask | awk '{print $2}')

if [[ $htbip == *"10.10"* ]]
then
   echo "$htbip"
else
   echo "$showip"
fi
