#bin/bash

for i in 1 2 3 4 5 6 7 8 9; do 
  sudo yum install -y yum-utils
  sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
  sudo yum -y install terraform
  sudo yum -y install nomad
  sudo yum -y install vault
  sudo yum -y install packer
  sudo yum -y install consul
  sudo apt-get -y install python3-pip
  sudo pip install docker-compose
done
