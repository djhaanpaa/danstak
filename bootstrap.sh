#!/usr/bin/env bash
DISTRO_VER=$(lsb_release -r -s)
echo "DANSTAK Install Script"
echo "Using Distribution Release: $DISTRO_VER"

#########################################
# cleanup platform folder
sudo rm -rf /platform

#########################################
# install base packages
sudo apt install -y git-core

#########################################
# install powershell
# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/$DISTRO_VER/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
sudo apt-get update

# Enable the "universe" repositories
sudo add-apt-repository universe

# Install PowerShell
sudo apt-get install -y powershell

rm -rf packages-microsoft-prod.deb

#########################################
# setup base platform folders
sudo mkdir -p /platform
sudo mkdir -p /platform/bin
sudo mkdir -p /platform/data
sudo mkdir -p /platform/scripts
sudo git clone https://github.com/djhaanpaa/danstak.git /platform/danstak
setfacl -R -d -m u:dntsadmin:rwx /platform 
setfacl -R -m u:dntsadmin:rwx /platform 

