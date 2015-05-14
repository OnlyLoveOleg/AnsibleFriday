#!/bin/bash

apt-get update --fix-missing
apt-get install -qy git build-essential python-setuptools python-dev

easy_install pip

pip install paramiko PyYAML Jinja2 httplib2 simplejson


cd /opt
git clone git://github.com/ansible/ansible.git --recursive

cat >> /root/.bashrc <<EOF

# Ansible env setup
if [ -f /opt/ansible/hacking/env-setup ]; then
    source /opt/ansible/hacking/env-setup -q
fi
EOF
