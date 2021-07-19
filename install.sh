#bin/bash

for i in 1 2 3 4 5 6 7 8 9; do 
  sudo apt-get -y install yum-utils
  sudo apt-get -y --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
  sudo apt-get -y install terraform
  sudo apt-get -y install nomad
  sudo apt-get -y install vault
  sudo apt-get -y install packer
  sudo apt-get -y install consul
  sudo apt-get -y install python3-pip
  sudo pip install docker-compose
done
