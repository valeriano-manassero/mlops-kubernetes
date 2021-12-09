terraform {
  required_version = ">= 1.0.4"

  required_providers {
    github = {
      source = "integrations/github"
      version = ">= 4.13.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.4.1"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.11.3"
    }
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.8.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }

  }
}

provider "flux" {}

provider "kubectl" {}

provider "kubernetes" {
  config_path = var.kubernetes_config_path
}

provider "github" {
  owner = var.github_owner
  token = var.github_token
}
