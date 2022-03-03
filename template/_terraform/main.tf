module "github" {
  # https://github.com/imomaliev/terraform-registry/tree/main/modules/github
  source = "git@github.com:imomaliev/terraform-registry.git//modules/github"

  token               = var.github_token
  project_name        = null
  project_description = null
  topics              = []
}
