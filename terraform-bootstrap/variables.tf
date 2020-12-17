variable "github_owner" {
  type = string
  default = "valeriano-manassero"
}

variable "github_token" {
  type = string
}

variable "repository_name" {
  type    = string
  default = "mlops-k8s-infra"
}

variable "repository_visibility" {
  type    = string
  default = "public"
}

variable "flux_version" {
  type    = string
  default = "latest"
}

variable "branch" {
  type    = string
  default = "main"
}

variable "target_path" {
  type    = string
  default = "cluster"
}
