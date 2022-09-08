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

#Import existing admin and maintainer teams
data "github_team" "cluster-admins" {
  slug = var.cluster-admins
}

data "github_team" "maintainer_team" {
  slug = var.maintainer_team
}

# Add teams to the repo and grant permissions


resource "github_team_repository" "this" {
  repository = github_repository.this.name

  for_each = {
    "cluster-admins"  = "admin"
    "maintainer_team" = "maintain"
  }
  team_id    = each.key
  permission = each.value
}
