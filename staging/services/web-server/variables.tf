variable "tf_az_subnet_name" {
    description = "Define the subnet uses to deploy the VMs."
    default     = "staging-test-subnet1"
}

variable "tf_az_net_name" {
    description = "Define the virtual network where the subnet is present."
    default     = "staging-test-net"
}

variable "tf_az_rg_name" {
    description = "Define the resource group which hosts the virtual network."
    default     = "staging-test-rg"
}