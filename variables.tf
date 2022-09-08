variable "name" {
  description = "Name of the repository"
  type        = string
}

variable "description" {
  description = "Description for the repository"
  type        = string
}

variable "template_owner" {
  description = "Name of the organisation owning the template repository"
  type        = string

}

variable "template_repository" {
  description = "Name of the template repository to use"
  type        = string
}

variable "cluster-admins" {
  description = "Name of the admin team"
  type        = string
}

variable "maintainer_team" {
  description = "Name of the maintainer team"
  type        = string
}
