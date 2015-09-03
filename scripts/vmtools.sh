#!/bin/sh

echo "Installing epel-release."
dnf -y install epel-release

echo "Installing dkms"
dnf -y install dkms

echo "Installing group Development Tools."
dnf -y groupinstall 'Development Tools'

echo "Mounting Virtual Box additional guest tools."
mount /dev/sr1 /mnt

echo "Installing Virtual Box additional guest tools."
/mnt/VBoxLinuxAdditions.run

echo "Unmounting Virtual Box additional guest tools."
umount /mnt
