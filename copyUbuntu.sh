#!/bin/bash

USBArray=$(df --output=source | grep /dev/sd)
echo $USBArray

for i in $USBArray
do 
    sudo dd if=~/Downloads/ubuntu-22.04.2-desktop-amd64.iso of=$i bs=1M status=progress &
done

