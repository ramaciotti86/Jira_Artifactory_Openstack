data "terraform_remote_state" "terraform_Jira_Artifactory_Openstack_state" {
  backend = "artifactory"
  config = {
    username = ""
    password = ""
    url      = ""
    repo     = ""
    subpath  = "/com/terraform-Jira_Artifactory_Openstack-state"
  }
}
