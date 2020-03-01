#!/bin/sh
sudo swapoff swapfile
sudo dd if=/dev/zero of=swapfile bs=1G count=32
ls -lh swapfile
sudo chmod 600 swapfile
ls -lh swapfile
sudo mkswap swapfile
sudo swapon -p 0 swapfile
sudo swapon -s
