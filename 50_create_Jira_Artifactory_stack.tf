resource "openstack_compute_instance_v2" "tf_create_Jira_Artifactory_stack" {
  name = "tf_${var.env_name}"
  image_id = data.openstack_images_image_v2.tf_get_base_image.id
  image_name = data.openstack_images_image_v2.tf_get_base_image.name
  flavor_id = data.openstack_compute_flavor_v2.tf_get_flavor.id
  key_pair = data. openstack_compute_keypair_v2.tf_get_keypair.id
  security_groups = [data.openstack_networking_secgroup_v2.tf_get_security_group.name]

  network {
    name = var.network_name
    fixed_ip_v4 = var.ipv4_list[0]
  }
}