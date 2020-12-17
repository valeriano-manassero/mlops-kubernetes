terraform {
  required_version = ">= 0.13"

  required_providers {
    github = {
      source  = "hashicorp/github"
      version = ">= 3.1.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 1.13.3"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.9.1"
    }
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.0.1"
    }
  }
}

provider "flux" {}

provider "kubectl" {}

provider "kubernetes" {}

provider "github" {
  owner = var.github_owner
  token = var.github_token
}
