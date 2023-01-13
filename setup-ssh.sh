#!/bin/bash
if [ ! -e ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N ""
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
fi

for i in 192.168.56.20 192.168 56.21 192.168.56.22; do
    ssh-copy-id $i
done
