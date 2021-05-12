terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
      version = "2.0.0"
    }
  }
}

variable "project_id" {
  type = string
}

provider "scaleway" {
  # Configuration options
  zone = "fr-par-1"
  region = "fr-par"
  project_id = var.project_id
}
