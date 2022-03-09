# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
resource "github_repository" "terraform_github_demo" {
  name        = "terraform-github-demo"
  description = "This repo is created via Terraform"
  visibility  = "public"
  auto_init   = true
}
