# MLOps Kubernetes cluster (GitOps way)

## Description

This repository contains the `state of MLOps Kubernetes cluster` managed with GitOps paradigm.

## Requirements

A Kubernetes cluster `>=1.21` with complete access via `kubectl` is needed to start.
Cluster should also have at least one node with an NVIDIA gpu.

## Management Components

### Terraform

`terraform` folder contains the needed stuff to initialize a new cluster.

### Flux

`cluster` folder contains every declaration used by Flux to get the cluster in sync with the git repo.

## Runtime Components

* Allegro ClearML
* TrinoDB
* Minio
* NVIDIA GPU Operator

## Cluster bootstrap

Fork this repository.
In `terraform` folder create a file called `terraform.tfvars` containing:
```
github_token = "your developer token"
```
A valid token generated on your GitHub account that can access the repository must be put in the file.

Apply terraforming
```
terraform init

terraform plan

terraform apply
```
Take a cup of tea! Cluster should be automatically bootstrapped and Flux will start to get in sync your cluster in minutes.
Enjoy!
