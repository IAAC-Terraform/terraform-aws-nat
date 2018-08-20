resource "aws_nat_gateway" "ngw" {
  count         = "${var.create_vpc && var.nat_gateway_route ? var.count : 0}"
  allocation_id = "${element(var.allocation_id, count.index)}"
  subnet_id     = "${var.subnet_id}"          # Public subnet id

  tags {
    Name = "${var.env}-ngw-0${count.index}"
  }
  lifecycle {
        ignore_changes = [
            "tags"
        ]
    }
}

resource "aws_route" "route" {
  count                  = "${var.create_vpc && var.nat_gateway_route ? var.nat_routes : 0}"
  route_table_id         = "${element(var.route_table_id, count.index)}"
  destination_cidr_block = "${var.destination_cidr_block}"
  nat_gateway_id = "${element(aws_nat_gateway.ngw.*.id, count.index)}"
}