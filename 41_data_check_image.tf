data "openstack_images_image_v2" "tf_get_base_image" {
  name = var.base_image
}