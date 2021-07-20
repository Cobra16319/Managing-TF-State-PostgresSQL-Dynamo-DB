## Lab to get started with managing Terraform State (PostgresSQL & Dynamo DB)

Terraform provides benefits that include automated infrastructure management, lower deployment costs, and reduced provisioning time..

Full options for local or remote backends here: https://www.terraform.io/docs/language/settings/backends/index.html

For official reccomendations for your use case i.e. dev or enterprise please refer to the links for both AWS and HashiCorp below:

## Terraform Enterprise Backend on AWS RDS Architecture:

![image](https://user-images.githubusercontent.com/46206055/126203097-9f0e09e5-030a-4c94-b107-90567c8efa92.png)

https://www.terraform.io/docs/enterprise/before-installing/postgres-requirements.html

https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html


## Server-less Terraform Backend on AWS with Remote State

![image](https://user-images.githubusercontent.com/46206055/126203443-da1159ba-bccc-4b08-be1d-fc092cd55e1f.png)

https://github.com/Cobra16319/TF-Backend-Example


##  Pay attention to the comments if you are on Intel or MAC M1 this project supports both. Consult docs below for vagrant.  


https://learn.hashicorp.com/tutorials/vagrant/getting-started-boxes


##  Step # 1 Clone Repo to your local machine (Should have followed the Vagrant guide above unless on Mac M1 have docker or virtual box properly installed etc...)

``
git clone https://github.com/Cobra16319/Vagrant-TF-Enterprise-Psql-Dev.git 
``

`` 
cd Vagrant-TF-Enterprise-Psql-Dev 
`` 

#  Step # 2 Deploy Vagrant but pay attention to comments based on your OS in vagrant file


``
vagrant up --provider=docker
``

``
vagrant ssh
``


## Step # 3 Now run the post-install script for dev tools

``
sudo apt-get install git
``

``
git clone https://github.com/Cobra16319/Vagrant-TF-Enterprise-Psql-Dev.git
``

``
cd Vagrant-TF-Enterprise-Psql-Dev.git
``

``
chmod +x post-install.sh
`` 

``
./post-install.sh
``



#  Step # 4 Deploy Docker 

`` 
docker-compose up 
`` 

#  Step # 5 Let your container run; pull up another terminal and get back into vagrant working directory you were in.

``
docker exec -it vagrant-tf-enterprise-psql-dev_db_1 /bin/bash
``

#  Step # 6 Update the DB Schema as example for lab (See full guide above for production use cases)

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

##  Step # 7 Execute Terraform with the following commands to finish lab and use Postgres as a backend for TF

``
Terraform init
``


``
Terraform plan
``


``
Terraform apply
``

# You can reach your local data base by using 

``
psql -h 0.0.0.0 -p 5432 -U postgres
``



## Let me know what else you would like to see that you may not be able to find on HashiCorp Learn. Happy to help. 

## Credit to Rofrano for help getting Vagrant to run on the M1 MAC!... I was stuck on this for weeks. Great work! 
https://github.com/rofrano/vagrant-docker-provider




