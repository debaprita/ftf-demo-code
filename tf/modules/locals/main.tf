
locals {
  az_env = lookup(var.az_env_lookup, format("%s_%s", var.location, var.environment))

  dynamic_tags = {
    app_code           = var.app_code
    environment        = var.environment
    cost_center_number = var.cost_center_number
  }

  tags = merge(var.default_tags, local.dynamic_tags)
}

