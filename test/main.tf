module "example" {
  source = "./.."

  application_name    = "githubrepo"
  description         = "githubrepotest"
  template_owner      = "gitrepo"
  template_repository = "templaterepo"
  admin_team          = "analytical-platform"
  maintainer_team     = "analytical-platform"
}
