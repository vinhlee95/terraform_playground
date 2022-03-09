module "module_github" {
  source       = "./modules/module-github"
  github_token = var.github_token
}

module "module_gcp" {
  source               = "./modules/module-gcp"
  gcp_project          = var.gcp_project
  gcp_credentials_file = var.gcp_credentials_file
}