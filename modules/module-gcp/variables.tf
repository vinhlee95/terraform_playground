variable "gcp_project" {
  description = "The GCP project id"
  type        = string
}

variable "gcp_credentials_file" {
  description = "Path to GCP service account credentials JSON file"
  type        = string
}

variable "region" {
  default = "europe-north1"
}

variable "zone" {
  default = "europe-north1-a"
}