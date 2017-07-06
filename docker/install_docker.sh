#!/usr/bin/env bash
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum install -y docker-ce
systemctl start docker
groupadd docker
usermod -aG docker $USER
systemctl enable docker
echo -e "\033[31myou have to reboot or logout and login to make it available to run docker without sudo.\033[0m"