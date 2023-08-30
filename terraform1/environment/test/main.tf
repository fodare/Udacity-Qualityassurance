provider "azurerm" {
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "testrgudacityacc62"
    container_name       = "testrgudacityacc62stacc"
    key                  = "terraform.tfstate"
    # access_key           = var.access_key
  }
}

locals {
  tags = {
    tier       = "${var.tier}"
    deployment = "${var.deployment}"
  }
}

# module "resource_group" {
#   source         = "../../modules/resourcegroup"
#   resource_group = var.resource_group
#   location       = var.location
# }

module "appservice" {
  source           = "../../modules/appservice"
  location         = var.location
  application_type = var.application_type
  # resource_type    = "AppService"
  resource_group = var.resource_group
  tags           = local.tags
}
