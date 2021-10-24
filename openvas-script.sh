#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install openvas

# Sync the vulnerability databases.

sudo greenbone-nvt-sync --rsync
sudo greenbone-scapdata-sync
sudo greenbone-certdata-sync

