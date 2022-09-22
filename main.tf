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
data "github_team" "admin_team" {
  slug = var.admin_team
}

data "github_team" "maintainer_team" {
  slug = var.maintainer_team
}

# Add teams to the repo and grant permissions


resource "github_team_repository" "admin" {
  repository = github_repository.this.name
  team_id    = data.github_team.admin_team.id
  permission = "admin"
}

resource "github_team_repository" "maintainer" {
  repository = github_repository.this.name
  team_id    = data.github_team.maintainer_team.id
  permission = "maintain"
}
