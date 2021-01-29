locals {
  owner = "mintak21"
}

module "dotfiles" {
  source = "github.com/mintak21/terraform-modules/github/repository"

  name                          = "dotfiles"
  description                   = "FirstSetupFiles"
  has_default_branch_protection = false
  is_archive_on_destroy         = true
  github_owner                  = local.owner
  github_token                  = var.github_token
}

module "terraform_modules" {
  source = "github.com/mintak21/terraform-modules/github/repository"

  name                          = "terraform-modules"
  description                   = "自分用Terraform Module群"
  has_default_branch_protection = false
  is_archive_on_destroy         = true
  github_owner                  = local.owner
  github_token                  = var.github_token
}

module "terraform_gcp_project" {
  source = "github.com/mintak21/terraform-modules/github/repository"

  name                          = "terraform-gcp-project"
  description                   = "GCPプロジェクトの管理"
  has_default_branch_protection = false
  github_owner                  = local.owner
  github_token                  = var.github_token
}

module "kind" {
  source = "github.com/mintak21/terraform-modules/github/repository"

  name                          = "kind"
  description                   = "k8s manifests for create local cluster and exercise applying"
  has_default_branch_protection = false
  is_archive_on_destroy         = true
  github_owner                  = local.owner
  github_token                  = var.github_token
}

module "line_bot" {
  source = "github.com/mintak21/terraform-modules/github/repository"

  name           = "line-bot"
  description    = "Repo For LINEBot"
  default_branch = "master"
  github_owner   = local.owner
  github_token   = var.github_token
}

module "qiitanwrapper" {
  source = "github.com/mintak21/terraform-modules/github/repository"

  name           = "qiitanwrapper"
  description    = "QiitaWrapperAPI"
  default_branch = "master"
  github_owner   = local.owner
  github_token   = var.github_token
}
