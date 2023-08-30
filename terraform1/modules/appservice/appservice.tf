resource "azurerm_app_service_plan" "test-appservice-plan" {
  name                = "${var.application_type}-${var.location}"
  location            = var.location
  resource_group_name = var.resource_group

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "test-appservice" {
  name                = "${var.application_type}-${var.resource_group}"
  location            = var.location
  resource_group_name = var.resource_group
  app_service_plan_id = azurerm_app_service_plan.test-appservice-plan.id

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = 0
  }
  tags = var.tags
}
