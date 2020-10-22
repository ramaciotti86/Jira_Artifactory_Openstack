# Jira and Artifactory on Openstack with Terraform and Ansible

## Instance creation using Terraform
To install Base Image with Jira and Artifactory containers on it, please use terraform with the commands below

## Terraform Commands
```
terraform_0.12.exe init → to init terraform on this directory
terraform_0.12.exe plan -var-file='terraform.tfvars' → to check what resources will be create
terraform_0.12.exe apply -var-file='terraform.tfvars' → to apply all resources in openstack
terraform_0.12.exe destroy -var-file='terraform.tfvars' → to destroy all resources created in openstack
```

PS: Before run Ansible commands, wait about 2 to 3 minutes after apply command as the machine need to be up and running properly.

## Terraform and provider.openstack versions
Terraform v0.12.28

Provider.openstack v1.28.0

## Terraform Docs
https://www.terraform.io/docs/index.html

## Terraform State Files
Are files where terraform keeps the information about the resources it is using. more details at this page: https://www.terraform.io/docs/state/index.html

The Terraform states are setup to be housed in Artifactory: https:ARTIFACTORY_URL/com/terraform-Jira_Artifactory_Openstack-state/terraform.tfstate

## Instance configuration using Ansible

After instance created with Terraform we need to install docker and docker-compose on it, so, we can use ansible.

Ansible will install docker and docker-compose and will run Jira and Artifactory containers on this machine. 

## Ansible Commands
```
ansible-playbook -i ansible/inventories/dev/hosts ansible/site.yml
```

## Jira and Artifactory manual configuration
After running ansible its necessary to follow few manual steps for Jira and Artifactory
