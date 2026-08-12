module "app_config_dev" {
  source = "./modules/app_config"
  config_filename = "${path.module}/dev_config.txt"
  config_content  = "environment=dev\nowner=kanamee\n"
}

module "app_config_prod" {
  source = "./modules/app_config"
  config_filename = "${path.module}/prod_config.txt"
  config_content  = "environment=prod\nowner=kanamee\n"
}

output "created_config_files" {
  value = {
    dev = {
      file_path = module.app_config_dev.file_path
      file_id   = module.app_config_dev.file_id
    }

    prod = {
      file_path = module.app_config_prod.file_path
      file_id   = module.app_config_prod.file_id
    }
  }
}