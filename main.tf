module "module_github" {
  source = "./modules/module-github"
  github_token = var.github_token
}

variable "github_token" {
  description = "the GitHub personal access token"
  type = string
}