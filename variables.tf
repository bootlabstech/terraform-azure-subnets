//resource_group
variable "resource_name" {
  type        = string
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}
variable "location" {
  type        = string
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

//vn
variable "virtual_network_name" {
  description = "The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type        = string
}

variable "virtual_address_space" {
  description = "The address prefixes to use for the subnet."
  type        = list
}

//subnet

variable "subnet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  type        = string
}

variable "subnet_address_space" {
  description = "The address prefixes to use for the subnet."
  type        = list
}

//nsg

variable "nsg_name" {
  type        = string
  description = "name of the azurerm_network_security_group"
}
variable "nsg_rules" {
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  description = "values for each NSG rule"
}



