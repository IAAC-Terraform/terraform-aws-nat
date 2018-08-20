resource "aws_nat_gateway" "ngw" {
  count         = "${var.create_vpc && var.nat_gateway_route ? var.count : 0}"
  allocation_id = "${element(var.allocation_id, count.index)}"
  subnet_id     = "${var.subnet_id}"          # Public subnet id

  tags {
    Name = "${var.env}-ngw"
  }
}

