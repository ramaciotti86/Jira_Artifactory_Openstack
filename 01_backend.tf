terraform {
  backend "artifactory" {
    username = ""
    password = ""
    url      = ""
    repo     = ""
    subpath  = "/com/terraform-Jira_Artifactory_Openstack-state"
  }
}
