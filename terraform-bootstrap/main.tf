data "flux_install" "main" {
  target_path    = "cluster"
  arch           = "amd64"
  network_policy = false
  version        = "latest"
}

data "flux_sync" "main" {
  target_path = "cluster"
  url         = "https://github.com/valeriano-manassero/mlops-k8s-infra"
  branch      = "main"
}
