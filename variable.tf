variable "env" {}

variable "subnet_id" {
  description = "The Public Subnet ID"
  default     = ""
}

variable "create_vpc" {}

variable "allocation_id" {
  type = "list"
}

variable "nat_gateway_route" {
  default = "false"
}

variable "count" {}