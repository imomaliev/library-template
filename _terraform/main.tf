module "github" {
  # https://github.com/imomaliev/terraform-registry/tree/main/modules/github
  source = "git@github.com:imomaliev/terraform-registry.git//modules/github"

  token               = var.github_token
  project_name        = "Library Template"
  project_description = "Template for creating library repository"
  topics              = ["template", "terraform", "pre-commit", "editorconfig"]
  is_template         = true
}
