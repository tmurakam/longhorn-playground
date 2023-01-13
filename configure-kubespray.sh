#!/bin/bash
source ~/.venv/default/bin/activate

cd kubespray

cp -rfp inventory/sample inventory/mycluster

IPS="192.168.56.10 192.168.56.20 192.168.56.21 192.168.56.22"

export KUBE_CONTROL_HOSTS=1

CONFIG_FILE=inventory/mycluster/hosts.yaml python3 contrib/inventory_builder/inventory.py $IPS
cat inventory/mycluster/hosts.yaml



