#!/bin/bash

## 1.1 Downlaod CLIs
### wget https://${cluster_ip}/wcp/plugin/${os}/vsphere-plugin.zip
### ${cluster_ip} = Supervisor Control Plane IP e.g. ‘172.20.10.160‘
### ${os} = linux-amd64 | windows-amd64 | darwin-amd64 e.g. Linux ‘linux-amd64‘

wget https://172.20.10.160/wcp/plugin/linux-amd64/vsphere-plugin.zip

## 1.2 Install CLI (2 directory: kubectl-vsphere & kubectl)
unzip vsphere-plugin.zip

install bin/kubectl /usr/bin/
kubectl version
install bin/kubectl-vsphere /usr/bin
kubectl vsphere version

## 1.3 Enable autocompletion
### check with ‘cat ~/.bash_profile‘

echo 'export PATH=/root/bin:$PATH' >> ~/.bash_profile
echo 'source <(kubectl completion bash)' >> ~/.bash_profile

cat ~/.bash_profile
