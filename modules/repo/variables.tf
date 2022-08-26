variable "template_owner" {
  description = "Name of the organisation owning the template repository"
  type        = string
  default       = "moj-analytical-services"
}

variable "template_repository" {
  description = "Name of the template repository to use"
  type        = string
  default     = "ap-terraform-module-template"
}