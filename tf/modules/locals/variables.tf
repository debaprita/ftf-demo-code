## variables

variable "app_code" {
  type        = string
  description = "Application code"
}

variable "app_name" {
  type        = string
  description = "Application name"
}

variable "environment" {
  type        = string
  description = "Application environment"
}

variable "cost_center_number" {
  type        = string
  description = "Cost Center number for chargeback"
}

variable "az_env_lookup" {
  type        = map(string)
  description = "azure environment and region map"

  default = {
    eastus2_dev  = "de"
    eastus2_qa   = "qe"
    eastus2_perf = "fe"
    eastus2_prod = "pe"

  }
}

variable "default_tags" {
  type        = map(string)
  description = "resource tags"
  default = {
    "source" = "terraform"
  }
}

variable "location" {
  type        = string
  description = "Region to deploy service(s) into"
  default     = "eastus2"
}
