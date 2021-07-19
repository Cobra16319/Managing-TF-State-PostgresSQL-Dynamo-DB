## Lab to get started with Terraform State (PostgresSQL & Dynamo DB)

Terraform provides benefits that include automated infrastructure management, lower deployment costs, and reduced provisioning time..

Full options for local or remote backends here: https://www.terraform.io/docs/language/settings/backends/index.html

For official reccomendations for your use case i.e. dev or enterprise please refer to the links for both AWS and HashiCorp below:

## Terraform Enterprise Guide and AWS RDS selection Guides below & Architecture Below:

![image](https://user-images.githubusercontent.com/46206055/126203097-9f0e09e5-030a-4c94-b107-90567c8efa92.png)

![image](https://user-images.githubusercontent.com/46206055/126203443-da1159ba-bccc-4b08-be1d-fc092cd55e1f.png)


https://www.terraform.io/docs/enterprise/before-installing/postgres-requirements.html

https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html

## I created this Vagrantfile for use with M1 Macbook. Refer to HashiCorp Learn for Vagrant instructions for your OS. 


https://learn.hashicorp.com/tutorials/vagrant/getting-started-boxes


## You will need to follow the Vagrant getting stated or if on M1 Mac book you can use my method for psql (M1 mac still has opinions (: running vagrant).

``
git clone https://github.com/Cobra16319/Vagrant-TF-Enterprise-Psql-Dev.git 
``

`` 
cd Vagrant-TF-Enterprise-Psql-Dev 
`` 

# Automates for a M1 MacBook use instructios for your OS. If issue post it I will work on it for you (Read comments on buildx)

``
chmod +x vagrant.sh
``

`` 
./vagrant.sh
``


## Next use the install script to supplement the vagrant machine to work with the version or additional workflows you need.  

``
sudo apt-get install git
``

``
git clone https://github.com/Cobra16319/Vagrant-TF-Enterprise-Psql-Dev.git
``


``
chmod +x install.sh
``

``
./install.sh
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
``

``
CREATE SCHEMA IF NOT EXISTS vault;
``

``
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


I also made one for OSS TF using AWS S3 & Dynamo DB that you can use if you are not in need of enterprise solutions.

https://github.com/Cobra16319/TF-Backend-Example

