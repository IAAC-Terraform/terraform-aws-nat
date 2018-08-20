output "ngwid" {
  value = "${aws_nat_gateway.ngw.*.id}"
}

output "ngwnetwork_interface_id" {
  value = "${aws_nat_gateway.ngw.*.network_interface_id}"
}

output "ngwprivate_ip" {
  value = "${aws_nat_gateway.ngw.*.private_ip}"
}

output "ngwpublic_ip" {
  value = "${aws_nat_gateway.ngw.*.public_ip}"
}
