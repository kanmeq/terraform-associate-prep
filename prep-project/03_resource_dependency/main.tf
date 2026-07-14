terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "tls_private_key" "main" {
  algorithm = RSA
  rsa_bits = 4096
}

resource "local_sensitive_file" "tls_private_key" {
  content = tls_private_key.main.private_key_pem
  filename = "${path.module}/private_key.pem"
  lifecycle {
    prevent_destroy = true
  }
}
