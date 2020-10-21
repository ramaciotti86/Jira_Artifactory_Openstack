data "openstack_networking_secgroup_v2" "tf_get_security_group" {
  name = var.security_group
}