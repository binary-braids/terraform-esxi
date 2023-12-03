terraform {
  required_version = ">= 0.13"
  required_providers {
    esxi = {
      source = "registry.terraform.io/josenk/esxi"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "#{terraform_orginization}#"
    token = "#{terraform_token}#"

    workspaces {
      name = "#{terraform_workspace}#"
    }
  }
}