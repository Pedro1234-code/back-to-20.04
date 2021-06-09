#!/bin/bash

echo Downgrading Ubuntu 21.04 to Ubuntu 20.04

sudo apt update

sudo apt install wget git curl proot nano -y

cd ~/

sudo mkdir focal

cd focal

FOCAL=ubuntu-20.04-minimal-cloudimg-amd64-root.tar.xz

sudo wget http://cloud-images.ubuntu.com/minimal/releases/focal/release/ubuntu-20.04-minimal-cloudimg-amd64-root.tar.xz

sudo tar -xf $FOCAL

cd etc/apt

sudo rm -rf /etc/apt/sources.list

sudo cp sources.list /etc/apt/

cd ..

sudo rm -rf /etc/os-release

cp os-release /etc/

sudo apt update 

sudo apt update

sudo apt upgrade -y

sudo apt install ubuntu-desktop -y

sudo apt install ubuntu-session -y

sudo apt install ubuntu-gnome-desktop -y

sudo apt install openbox -y

sudo apt remove --purge gnome-session -y

sudo apt remove --purge gnome -y

echo Finished. Rebooting the system.

sudo reboot -f
