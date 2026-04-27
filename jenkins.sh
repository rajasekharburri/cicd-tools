#!/bin/bash

# Disk resize (safe)
growpart /dev/nvme0n1 4 || true

lvextend -L +10G /dev/mapper/RootVG-varVol || true
lvextend -L +10G /dev/mapper/RootVG-rootVol || true
lvextend -l +100%FREE /dev/mapper/RootVG-homeVol || true

xfs_growfs / || true
xfs_growfs /var || true
xfs_growfs /home || true

# Jenkins install
curl -o /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

yum install fontconfig java-21-openjdk -y
yum install jenkins -y

systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins