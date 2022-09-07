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

#Import existing cluster-admins team
data "github_team" "cluster-admins" {
  slug = "cluster-admins"
}

# Add a team to a repo and grant permissions
resource "github_team_repository" "this" {
  team_id    = data.github_team.cluster-admins.id
  repository = github_repository.this.name
  permission = "admin"
}
