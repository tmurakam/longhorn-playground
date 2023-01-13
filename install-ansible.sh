#!/bin/bash
sudo apt update && sudo apt install -y python3-venv

if [ -d ~/.venv/default ]; then
    python3 -m venv ~/.venv/default
fi

source ~/.venv/default/bin/activate

(cd kubespray && pip install -r requirements.txt)


