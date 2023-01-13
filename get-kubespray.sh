#!/bin/bash
KUBESPRAY_VERSION=2.20.0
KUBESPRAY_DIR=kubespray-${KUBESPRAY_VERSION}

if [ ! -d $KUBESPRAY_DIR ]; then
    curl -SL https://github.com/kubernetes-sigs/kubespray/archive/refs/tags/v${KUBESPRAY_VERSION}.tar.gz >kubespray-${KUBESPRAY_VERSION}.tar.gz
    tar xvzf kubespray-${KUBESPRAY_VERSION}.tar.gz
    ln -s kubespray-${KUBESPRAY_VERSION} kubespray
fi



