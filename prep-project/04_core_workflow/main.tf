terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

variable "project_labels" {
  type = map(string)

  default = {
    environment = "production"
    owner       = "kanamee"
    team        = "devops"
  }
}