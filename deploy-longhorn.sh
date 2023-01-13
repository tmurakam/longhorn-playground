#!/bin/bash

# Install iscsi, nfsv4
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.4.0/deploy/prerequisite/longhorn-iscsi-installation.yaml
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.4.0/deploy/prerequisite/longhorn-nfs-installation.yaml

# Deploy longhorn
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.4.0/deploy/longhorn.yaml

# Deploy longhorn storage class
kubectl create -f https://raw.githubusercontent.com/longhorn/longhorn/v1.4.0/examples/storageclass.yaml

# Deploy sample pod and pv
kubectl create -f https://raw.githubusercontent.com/longhorn/longhorn/v1.4.0/examples/pod_with_pvc.yaml
