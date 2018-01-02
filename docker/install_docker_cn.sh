#!/usr/bin/env bash
user=$1
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum makecache fast
yum install -y docker-ce
systemctl start docker
groupadd docker
usermod -aG docker $user
systemctl enable docker
echo -e "\033[31myou have to reboot or logout and login to make it available to run docker without sudo.\033[0m"
