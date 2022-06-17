terraform {
  cloud {
    organization = "AWS-GlobalResources"

    workspaces {
      name = "ProjectTYI"
    }
  }
}