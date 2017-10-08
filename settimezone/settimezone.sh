#!/bin/bash
su - root -c rm /etc/localtime
su - root -c ln -s /usr/share/zoneinfo/"%1" /etc/localtime
su -root -c rm /etc/timezone
echo "%1" | sudo tee /etc/timezone
