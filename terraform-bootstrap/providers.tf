terraform {
  required_version = ">= 0.15"

  required_providers {
    github = {
      source = "integrations/github"
      version = ">= 4.12.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.1.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.10.0"
    }
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.1.3"
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
