```


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