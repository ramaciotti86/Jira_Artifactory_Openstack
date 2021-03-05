variable "env_name" {
  description = "VM that is being used to connect with Jira and Artifactory"
}

############################### Openstack Tenancy ###############################
variable "tenant_name" {
  description = "The name of the Tenant."
}

variable "project_name" {
  description = "The name of the Project"
}

variable "user_name" {
  description = "The username for the Tenant."
}

variable "password" {
  description = "The password for the Tenant."
}

variable "auth_url" {
  description = "The endpoint url to connect to OpenStack."
}

variable "region" {
  description = "Region"
}

############################### Security Group ###############################
variable "security_group" {
  description = "Security Group Used to allow or not Openstack ports"
}

############################### Openstack Network ###############################
variable "network_name" {
  description = "Name of the Network to be used"
}

variable "ipv4_list" {
  description = "List of public ipv4 IP's"
  type = list(string)
}

############################### Openstack Keypair ###############################
variable "keypair_name" {
  description = "Keypair name"
}

############################### Openstack Image ###############################
variable "base_image" {
  description = "Image name"
}

############################### Openstack Flavor ###############################
variable "flavor" {
  description = "Flavor name"
}
