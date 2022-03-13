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

variable "location" {
  type        = string
  description = "Region to deploy service(s) into"
  default     = "eastus2"
}

variable "dns_name_label" {
  type        = string
  description = "The DNS label/name for the container groups IP"
}

variable "os_type" {
  type        = string
  description = "The OS for the container group. Allowed values are Linux and Windows"
}

variable "image_name" {
  type        = string
  description = "The container image name"
}

variable "cpu_core_number" {
  type = string

  description = "The required number of CPU cores of the containers"
  default     = "0.5"
}

variable "memory_size" {
  type        = string
  description = "The required memory of the containers in GB"
  default     = "1.5"
}

variable "port_number" {
  type        = string
  description = "A public port for the container"
  default     = "80"
}

variable "acr_name" {
  type        = string
  description = "ACR name where the image is hosted"

}

variable "index" {
  type        = string
  description = "Unique index to add to the end of the resource group name"
}

variable "rg_name" {
  type        = string
  description = "ACI resource group name"
}

