variable "location" {
  description = "Appservice location"
  type        = string
}

variable "resource_group" {
  description = "Resource group name"
  type        = string
}

variable "application_type" {
  description = "App service application type"
  type        = string
}

# Tags
variable "tags" {
  type = map(string)
}
