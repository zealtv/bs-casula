#!/bin/bash
cd /home/pi/bs-casula
echo "stashing changes"
git stash
echo "pulling from git"
git pull
echo "updating submodules"
git submodule update --init --recursive
echo setting permissions
chown -R pi ./
cd scripts
echo "copying rc.local"
sudo cp ./rc.local /etc/
echo "rebooting in 5 seconds..."
sleep 5
systemctl reboot