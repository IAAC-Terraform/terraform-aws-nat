variable "env" {}

variable "subnet_id" {
  description = "The Public Subnet ID"
  type = "list"
}

variable "create_vpc" {}

variable "allocation_id" {
  type = "list"
}

variable "nat_gateway_route" {
  default = "false"
}

variable "count" {}

variable "destination_cidr_block" {}

variable "route_table_id" {
  type = "list"
}

variable "nat_routes" {}

variable "tags" {}

variable "name" {
  type = "map"
}