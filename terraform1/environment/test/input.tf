# Azure GUIDS
variable "subscription_id" {
  description = "Service principal subscription id"
  type        = string
}

variable "client_id" {
  description = "Service principal client id"
  type        = string
}

variable "client_secret" {
  description = "Service principal secret"
  type        = string
}

variable "tenant_id" {
  description = "Service principal tenant id"
}

# Resource Group/Location
variable "location" {
  description = "Resource group location"
  type        = string
}

variable "resource_group" {
  description = "Resource group name"
  type        = string
}

variable "application_type" {
  description = "Appservice application type"
}

# Tags
variable "tier" {}
variable "deployment" {}

# variable "storage_account_name" {
#   description = "Backend storage account name"
#   type        = string
# }

# variable "container_name" {
#   description = "Backend storage account container name"
#   type        = string
# }

# variable "key" {
#   description = "Backend storage account key"
#   type        = string
# }

# variable "access_key" {
#   description = "Backend storage account access key"
#   type        = string
# }
