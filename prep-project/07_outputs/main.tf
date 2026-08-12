terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

locals {
    db_info = {
    "location" = "US"
  }
}

resource "random_password" "db_password" {
  length = 8
  special = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "db_location" {
  value = local.db_info.location
}

output "db_password" {
  value = random_password.db_password
  sensitive = true
}