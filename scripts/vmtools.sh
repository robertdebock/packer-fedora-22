#!/bin/sh

echo "Installing epel-release."
yum -y install epel-release

echo "Installing dkms"
yum -y install dkms

echo "Installing group Development Tools."
yum -y groupinstall 'Development Tools'

echo "Mounting Virtual Box additional guest tools."
mount /dev/sr1 /mnt

echo "Installing Virtual Box additional guest tools."
/mnt/VBoxLinuxAdditions.run

echo "Unmounting Virtual Box additional guest tools."
umount /mnt
