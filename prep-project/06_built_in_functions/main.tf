terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

locals {
  abbreviations = {
  "s" = "server"
  "b" = "backup"
  "n" = "network"
  }
}

output "meaning" {
    value = lookup(local.abbreviations, "s", "Sorry, we dont have meaning for it")
}

output "abbreviation_list" {
  value = join(", ", values(local.abbreviations))
}

output "time" {
  value = timestamp()
}