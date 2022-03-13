
module "locals" {
  source             = "../modules/locals"
  app_code           = var.app_code
  app_name           = var.app_name
  cost_center_number = var.cost_center_number
  environment        = var.environment
  location           = var.location
}


# aci
resource "azurerm_container_group" "aci" {
  name                = "${var.app_code}_${var.app_name}_aci_${module.locals.az_env}_${var.index}"
  resource_group_name = var.rg_name
  location            = var.location
  ip_address_type     = "public"
  dns_name_label      = var.dns_name_label
  os_type             = var.os_type
  restart_policy      = "Always"


  image_registry_credential {
    server   = data.azurerm_container_registry.acr.login_server
    username = data.azurerm_container_registry.acr.admin_username
    password = data.azurerm_container_registry.acr.admin_password
  }

  container {
    name   = replace("${var.app_code}_${var.app_name}_cntr_${module.locals.az_env}_${var.index}", "/_|-/", "")
    image  = var.image_name
    cpu    = var.cpu_core_number
    memory = var.memory_size

    ports {
      port     = var.port_number
      protocol = "TCP"
    }
  }

  tags = module.locals.tags
}
