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

variable "region" {
  type = string
  validation {
    condition = contains(["europe", "asia", "america", "africa"], var.region)
    error_message = "Your region is incorrect! Try again"
  }
}

locals {
  team = upper(var.project_labels.team)
  region = upper(var.region)
}

output "team" {
  value = local.team
  description = "team information"
}

output "region" {
  value = local.region
  description = "region information"
}