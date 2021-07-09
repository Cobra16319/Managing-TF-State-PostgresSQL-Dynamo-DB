# Vagrant-TF-Enterprise-Psql-Dev
Workflow for a dev machine to practice setup for Terraform Enterprise with PSQL. 
Managing Policy and Infrastructure as Code requires State and using Postgres with Terraform 
Enterprise is one way to achieve that. This lab will help you understand how. For official 
reccomendations please refer to the links for both AWS and HashiCorp below:

## ** I created this Vagrantfile for use with M1 Macbook. If you are running something else like linux, or windows there are plenty of other Vagrant machines 
or you can just skip it. However please make sure you have docker installed correctly before trying to use the lab. If the shell script is not working due to your OS or path you can always just use the commands in the four loop (:



https://www.terraform.io/docs/enterprise/before-installing/postgres-requirements.html

https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html



``
git clone https://github.com/Cobra16319/Vagrant-TF-Enterprise-Psql-Dev.git 
``

`` 
cd Vagrant-TF-Enterprise-Psql-Dev 
`` 

# Skip if you do not need Vagrant

``
chmod +x vagrant.sh
``

`` 
./vagrant.sh
``


## Next Install Terraform to ensure it works follow this. If you already know reference HashiCorp Learn. 

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


# Deploy Docker 

`` 
docker-compose up 
`` 

# Enter the container 

``
docker exec -it vagrant-tf-enterprise-psql-dev_db_1 /bin/bash
``

# Update the DB Schema as example for lab

`` 
psql -U postgres
``

`` 
CREATE SCHEMA IF NOT EXISTS rails;
CREATE SCHEMA IF NOT EXISTS vault;
CREATE SCHEMA IF NOT EXISTS registry;
``

## Execute Terraform with the following commands to finish lab and use Postgres as a backend for TF

``
Terraform init
Terraform plan
Terraform apply
``

# You can reach your local data base by using 

``
psql -h 0.0.0.0 -p 5432 -U postgres
``



## Now that you are familar with TF Backend, Postgres please follow the checklist to learn the best ways to setup for dev, staging and prod! 

