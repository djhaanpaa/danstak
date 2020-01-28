#!/usr/bin/env bash

#########################################
# install base packages
sudo apt install -y git-core
sudo mkdir -p /platform
sudo mkdir -p /platform/bin
sudo mkdir -p /platform/data
sudo mkdir -p /platform/scripts
sudo git clone https://github.com/djhaanpaa/danstak.git /platform/danstak
