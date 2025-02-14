# Define input variables

## Common
variable "location"             { type = string }
variable "environment"          { type = string }
variable "tags"                 { type = map }

## VNet
variable "vnet01_cidr"        { type = list(string) }
variable "vnet01_app_subnet"  { type = list(string) }

# Define local variables
locals {
  # Construct customer resource name value
  customer = "${var.environment}-${var.location}"
}