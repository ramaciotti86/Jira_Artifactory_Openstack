provider "openstack" {
  tenant_name = var.tenant_name
  user_name = var.user_name
  password = var.password
  auth_url = var.auth_url
  region = var.region
}




