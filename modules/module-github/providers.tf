terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

variable "github_token" {
  description = "the GitHub personal access token"
  type = string
}

provider "github" {
  token = var.github_token
  owner = "@vinhlee95"
}

