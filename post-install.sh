# HashiStack Shell Script
#bin/bash

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14; do 
  #Adding HashiCorp Repo & Verify GPG signature
  
  sudo apt install docker-compose
  sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
 
 # Logging issue on this vagrant install terraform not loading. Adding work around
  
  sudo apt-get -y install terraform
  sudo apt-get -y install nomad
  sudo apt-get -y install vault
  sudo apt-get -y install packer
  sudo apt-get -y install consul
  
  
  # Verify version of software installed
  
  terraform version
  nomad version
  vault version
  packer version
  consul version
  
  
done
