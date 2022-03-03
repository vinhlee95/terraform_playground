terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = "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"
  owner = "@vinhlee95"
}

