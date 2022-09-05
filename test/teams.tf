#Import existing cluster-admins team

data "github_team" "cluster-admins" {
    slug = "cluster-admins"
    #id = "2628157"
    #description = "AP Cluster-admins team"
    #permission = "admin"
}
