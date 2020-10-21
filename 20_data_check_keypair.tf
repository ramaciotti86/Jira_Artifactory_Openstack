data "openstack_compute_keypair_v2" "tf_get_keypair" {
  name = var.keypair_name
}