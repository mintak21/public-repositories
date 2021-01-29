terraform {
  backend "remote" {
    organization = "mintak21"

    workspaces {
      name = "github-public-repository"
    }
  }
}
