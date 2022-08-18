module "example" {
    source = "./.."

    name = "githubrepo"
    description = "githubrepotest"
    template_owner = "gitrepo"
    template_repository = "templaterepo"
}