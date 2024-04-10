#!/bin/bash

# unmute audio on hifiberry miniamp board
sudo echo "16" > /sys/class/gpio/export 
sudo echo "out" > /sys/class/gpio/gpio16/direction
sudo echo "1" > /sys/class/gpio/gpio16/value 
sudo echo "16" > /sys/class/gpio/unexport
