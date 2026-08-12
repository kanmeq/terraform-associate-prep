terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

locals {
  server_configs = {
    "web-server" = "port=80\nenv=production"
    "db-server"  = "port=5432\nmax_connections=100"
    "app-server" = "port=8080\ndebug=false"
  }
}

resource "local_file" "configs" {
  for_each = local.server_configs
  filename = "${path.module}/config${each_key}.txt"
  content = each.value
}

resource "local_file" "test" {
  count = 3
  filename = "count_test_${count.index}.txt"
  content = "This is a test number ${count.index}"
}