#!/bin/bash


sudo su
apt-get update
apt-get upgrade -y

swapoff -a
apt install docker.io -y
apt install apt-transport-https curl -y

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

sudo apt update

apt install kubeadm kubelet kubectl kubernetes-cni -y

