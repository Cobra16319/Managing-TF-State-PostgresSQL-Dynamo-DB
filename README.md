# Vagrant-TF-Enterprise-Psql-Dev
Workflow for a dev machine to practice setup for Terraform Enterprise with PSQL. 
Managing Policy and Infrastructure as Code requires State and using Postgres with Terraform 
Enterprise is one way to achieve that. This lab will help you understand how. For official 
reccomendations please refer to the links for both AWS and HashiCorp below:



https://www.terraform.io/docs/enterprise/before-installing/postgres-requirements.html

https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html



``
git clone git@github.com:Cobra16319/Vagrant-TF-Enterprise-Psql-Dev.git 
``

`` 
cd Vagrant-TF-Enterprise-Psql-Dev 
`` 


``
chmod +x vagrant.sh
``

`` 
./vagrant.sh
``


## Next Install Terraform. For this demo special Instructions 

`` 
sudo apt-get install wget unzip
``

``
TER_VER=`curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | grep tag_name | cut -d: -f2 | tr -d \"\,\v | awk '{$1=$1};1'`
``

``
wget https://releases.hashicorp.com/terraform/${TER_VER}/terraform_${TER_VER}_linux_amd64.zip
``

``
unzip terraform_${VER}_linux_amd64.zip # Add your version or use autocomplete
`` 

`` 
sudo mv terraform /usr/local/bin/
``

``
terraform -version
``

# Add docker compose 

`` 
sudo apt-get -y install python3-pip
``

``
sudo pip install docker-compose
``
