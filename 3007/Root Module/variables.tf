variable "rg_name" {}
variable "rg_location" {}
variable "vnet_name" {}
variable "snet_name" {}
variable "nic_name" {}
variable "nsg_name" {}
variable "pip_name" {}
variable "nsg_id" {}
variable "nat_name" {}
variable "bastion_name" {}
variable "vm_name" {}
variable "lb_name" {}
variable "admin_username" {}
variable "admin_password" {
  sensitive = true
}