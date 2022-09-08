# Ap-Terraform-App-GitHub-Repo

Creates GitHub repository for application source code

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 4.29.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_team_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |
| [github_team.admin_team](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/team) | data source |
| [github_team.maintainer_team](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/team) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_team"></a> [admin\_team](#input\_admin\_team) | Name of the admin team | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description for the repository | `string` | n/a | yes |
| <a name="input_maintainer_team"></a> [maintainer\_team](#input\_maintainer\_team) | Name of the maintainer team | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the repository | `string` | n/a | yes |
| <a name="input_template_owner"></a> [template\_owner](#input\_template\_owner) | Name of the organisation owning the template repository | `string` | n/a | yes |
| <a name="input_template_repository"></a> [template\_repository](#input\_template\_repository) | Name of the template repository to use | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->