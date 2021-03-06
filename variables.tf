variable "github_token" {
  description = "the GitHub personal access token"
  type        = string
}

variable "gcp_project" {
  description = "The GCP project id"
  type        = string
}

variable "gcp_credentials_file" {
  description = "Path to GCP service account credentials JSON file"
  type        = string
}