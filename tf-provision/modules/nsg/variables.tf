# Variable for the name of the Network Security Group
variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
}

# Variable for the location of the NSG
variable "location" {
  description = "The location of the NSG"
  type        = string
}

# Variable for the name of the resource group
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

# Variable for the ID of the subnet to associate with the NSG
variable "subnet_id" {
  description = "The ID of the subnet to associate with the NSG"
  type        = string
}