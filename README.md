README
=========

This is to set up wordpress using AWS infrastructure. I am using terraform to provision infrastructure. Code uses and creates following aws services.

1. VPC and it's components
2. Subnets, Route Tables, Internet Gateway, Nat Gateway.
3. EC2 instance
4. EIP for NAT Gateway
5. RDS mysql instance.
6. Security Groups to access both EC2 and MYSQL

### Pre-requisite:

   1. You need to have Ssh keys generated and should be put into `~/.ssh/` , if your machine is windows then feel free to use diff path and update the same in the `ssh_key` variable in the `vars.tf`

   2. create an IAM user and create security credentials(AccessKey, SecretKey) and update in the `~/.aws/credentials`


Usage:
=======

provisioning:
-------------

1. git clone https://github.com/dimka200/aws-wordpress-project.git
2. cd aws-wordpress-project
2. terraform init
3. terraform plan
4. terraform apply

Versions:
--------
Terraform v1.5.7
