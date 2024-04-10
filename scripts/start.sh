#!/bin/bash
#not running on pi zero raspbian lite
#sudo service ntp stop
#sudo service triggerhappy stop
#sudo service dbus stop
#not running on pi zero raspbian lite
#sudo killall console-kit-daemon
#sudo killall polkitd
## Only needed when Jack2 is compiled with D-Bus support
#export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/dbus/system_bus_socket
#sudo mount -o remount,size=128M /dev/shm
#killall gvfsd
#killall dbus-daemon
#killall dbus-launch
## Uncomment if you'd like to disable the network adapter completely
#echo -n "1-1.1:1.0" | sudo tee /sys/bus/usb/drivers/smsc95xx/unbind
#echo -n performance | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# get available soundcards using cat /proc/asound/cards

echo "starting Jack"
# Start JACK!
jackd -P70 -p16 -t2000 -d alsa -d hw:sndrpihifiberry -p 128 -n 3 -r 22050 -s &

# leave enough time for jack to start before launching PD
sleep 30

# PYTHON
# todo

#enable audio
sudo /home/pi/bs-casula/enable-audio.sh &



echo "starting PD"
# PUREDATA
pd -nogui -jack /home/pi/bs-casula/test.pd &




exit