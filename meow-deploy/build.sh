#!/bin/bash

sudo apt-get update

echo "Installing python, wget and openssh-server..."
sudo apt-get -y install python3 python3-setuptools wget bzip2 build-essential unixodbc-dev

echo "UseDNS no" | sudo tee -a /etc/ssh/sshd_config
echo "GSSAPIAuthentication no" | sudo tee -a /etc/ssh/sshd_config

echo "Creating locale"
sudo locale-gen ru_RU.utf8

wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash ./Anaconda3-4.2.0-Linux-x86_64.sh -b -p /meow-deploy/conda
export PATH="/meow-deploy/conda/bin:$PATH"

cd /meow-deploy/conda/bin
sudo /meow-deploy/conda/bin/pip install catboost pyodbc
