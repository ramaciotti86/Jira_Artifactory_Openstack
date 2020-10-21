data "openstack_compute_flavor_v2" "tf_get_flavor" {
  name = var.flavor
}