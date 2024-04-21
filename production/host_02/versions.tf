terraform {
  required_version = ">= 1.6.0"
  required_providers {
    esxi = {
      source  = "registry.terraform.io/josenk/esxi"
      version = "1.10.3"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "#{TERRAFORM_ORGANIZATION}#"
    token        = "#{TERRAFORM_TOKEN}#"

    workspaces {
      name = "#{TERRAFORM_WORKSPACE}#"
    }
  }
}