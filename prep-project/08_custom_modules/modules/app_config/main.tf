resource "local_file" "config" {
  filename = var.config_filename
  content  = var.config_content
}
