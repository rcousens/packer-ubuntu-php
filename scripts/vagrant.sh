#! /bin/bash -eux

# install vagrant master key
mkdir ~vagrant/.ssh
wget --no-check-certificate \
    'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' \
    -O ~vagrant/.ssh/authorized_keys
chown -R vagrant ~vagrant/.ssh
chmod -R go-rwsx ~vagrant/.ssh
# install passwordless sudo
echo 'Defaults:vagrant !requiretty' > /etc/sudoers.d/vagrant
echo '%vagrant ALL = NOPASSWD: ALL' >> /etc/sudoers.d/vagrant