variable "subnet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  type        = string
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "network" {
  description = "The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type        = string
}

variable "subnet_cidr_ranges" {
  type = list(string)
  description = "The address prefixes to use for the subnet."
}