```


# Download and in Pure Data
http://puredata.info/downloads/pure-data

# download zip https://github.com/zealtv/bs-casula

# open terminal  

# IF NOT INSTALLED
# clone git repo to home directory
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



# remote connection
# connect
ssh pi@192.168.0.100
... password

# to see what's running
htop 

# to quit
q

# go to directory
cd bs-casula/scripts	

# update (needs internet)
./update

# wait to reboot and reconnect..



```


# running on the pi...

*shutdown unneeded services and start jack at 22050*
```
scripts/start-jack.sh 
```

*start _BS_CASULA_A.pd pd sketch*
```
scripts/start-bop.sh
```