#! /bin/bash -eux

# remove vbox guest additions iso
apt-get clean
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
