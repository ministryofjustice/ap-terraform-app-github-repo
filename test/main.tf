module "example" {
  source = "./.."

  name                = "githubrepo"
  description         = "githubrepotest"
  template_owner      = "gitrepo"
  template_repository = "templaterepo"
  admin_team          = "admin_team"
  maintainer_team     = "maintainer_team"
}
