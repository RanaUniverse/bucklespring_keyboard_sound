# Offline Setup for bucklespring 


Here i want to do a way so that i can use buckle sound in background in offline ubuntu setup. i will do it.


## Some Information about this how

https://github.com/zevv/bucklespring/issues/129
From this github docs issue part i found this says to work the bucklespring sound in all applications i need to install some packages and then i need to compile thigns (make libinput=1) and then run a sudo command, and like this i am ok to do.

```
sudo dpkg -i 1_libopenal-dev/*.deb
sudo dpkg -i 2_libalure-dev/*.deb
sudo dpkg -i 3_libxtst-dev/*.deb
sudo dpkg -i 4_libinput-dev/*.deb
```
Then it says i need to clone [the repo](https://github.com/zevv/bucklespring) and here i need to compile and run a starting command.
```
make libinput=1
sudo -E -g input -u $(whoami) ./buckle
```
But here a issue is when i clone this terminal application it stops the sound so for this i will need this below part

```
sudo -b -E -g input -u $(whoami) ./buckle
```
The `bucklespring_after_compile` Folder have some files and things whihc i got after the compile, so i need to run the upper command in this particular directory.



To check if it's running:
`ps aux | grep buckle`


To stop it manually:
`sudo pkill buckle`

## What i will do

The cloned repo is in the form of the zip file here which i need to extract and then i need to compile and run this to check how it works.


bucklespring.zip
This file i got on 21 April 2025

I need to extract this in a ~/.apps_and_softwares location.

## What to add in the .bashrc file:

```
alias 1='cd ~/.apps_and_softwares/bucklespring && sudo -b -E -g input -u $USER ./buckle'

alias abc='cd ~/.apps_and_softwares/bucklespring && sudo -b -E -g input -u $USER ./buckle'
```
## To Stop This sound
```
sudo pkill buckle
```

# How i make the Releases

Example code to make release zip,


zip -r bucklespring_keyboard_sound_v1.0.0.zip . -x ".git*"