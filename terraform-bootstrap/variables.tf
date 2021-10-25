variable "github_owner" {
  type = string
  default = "valeriano-manassero"
}

variable "github_token" {
  type = string
}

variable "kubernetes_config_path" {
  type    = string
  default = "~/.kube/config"
}

variable "repository_name" {
  type    = string
  default = "mlops-kubernetes"
}

variable "repository_visibility" {
  type    = string
  default = "public"
}

variable "flux_version" {
  type    = string
  default = "v0.19.1"
}

variable "branch" {
  type    = string
  default = "main"
}

variable "target_path" {
  type    = string
  default = "cluster"
}
