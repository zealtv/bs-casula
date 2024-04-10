#!/bin/bash

# unmute audio on hifiberry miniamp board
sudo -i
echo "16" > /sys/class/gpio/export 
echo "out" > /sys/class/gpio/gpio16/direction
echo "1" > /sys/class/gpio/gpio16/value 
echo "16" > /sys/class/gpio/unexport
exit