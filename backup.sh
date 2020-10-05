#!/bin/bash

# Script to perform backup of file system.
# Exludes the backup tarball and the one-file-system flag directories.

tar -cvpzf backup.tar.gz --exclude=/backup.tar.gz --one-file-system / 
