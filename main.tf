resource "github_repository" "this" {

  name                 = var.name
  description          = var.description
  has_projects         = true
  vulnerability_alerts = true
  has_issues           = true
  archive_on_destroy   = true
  visibility           = "internal"

  template {
    owner      = var.template_owner
    repository = var.template_repository
  }

}
