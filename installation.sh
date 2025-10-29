#!/bin/bash

sudo apt update
# Install Python 3 and pip
sudo apt install python3
sudo apt install python3-pip

# Install pipx
sudo apt install pipx
pipx ensurepath

# Install Ansible
pipx install --include-deps ansible
pipx ensurepath
pipx inject ansible boto3 botocore

# Install AWS CLI
sudo apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
