terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "pwc_projects"

    workspaces {
      name = "khalid_project"
    }
  }
}