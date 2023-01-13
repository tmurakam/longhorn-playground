#!/bin/bash
source ~/.venv/default/bin/activate

cd kubespray

ansible-playbook -i inventory/mycluster/hosts.yaml --become --become-user=root cluster.yml
