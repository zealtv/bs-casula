## Running Locally 
```
# Download and in Pure Data
http://puredata.info/downloads/pure-data

# download zip https://github.com/zealtv/bs-casula

# OR

# open terminal  

# IF NOT INSTALLED
# clone git repo to home directory (or anywhere)
git clone --recursive https://github.com/zealtv/bs-casula.git


# go to working directory
cd bs-casula

# open in finder
open .


# to update
git pull

# may need to stash
git stash


# Add samples 
copy samples.zip to bs-casula/bop/

and unzip samples directory


# pure data settings
samplerate to 22050
block size 256 if required


# run _BS_CASULA_PI.pd

# control globally across network 
# _BS_CASULA_CONTROL.pd

```



# Installation on Pi
## Flash SD using Raspberry Pi Imager
- Set username and password
- configure wireless LAN
- enable SSH
- Flash SD

## Install packages
```
# login
ssh pi@raspberrypi.local

# update
sudo apt-get update
sudo apt-get upgrade

# set up hifiberry miniamp
sudo nano /boot/config.txt


#Edit line as below (incuding comment)

#dtparam=audio=on
dtoverlay=hifiberry-dac


# save

# reboot
sudo reboot


# log back in...
ssh pi@raspberrypi.local

# set performance options > gpu memory to 16 (if applicable)
sudo raspi-config

# install jack2
sudo apt-get install jackd2

# install git
sudo apt-get install git

# install pure-data dependencies
sudo apt-get install build-essential automake autoconf libtool gettext libasound2-dev libjack-jackd2-dev tcl tk wish

# install puredata 0.54+
cd ~
git clone https://github.com/pure-data/pure-data.git
cd ./pure-data/
./autogen.sh
./configure --enable-jack
make
sudo make install


```



## Install project code
```
# goto home directory
cd ~

# clone this repo
git clone https://github.com/zealtv/bs-casula.git

# copy samples.zip to ~/bs-casula/bop/
# unzip
unzip ~/bs-casula/bop/samples.zip

# run update script to install rc.local autostart file and reboot
sudo ~bs-casula/scripts/update.sh

# pi should reboot with jack, python, and puredata running

```


