output "instance_name" {
  value = aws_instance.openvpn.id
}
output "public_ip" {
  value = aws_eip.vpn_access_server.public_ip
}
output "instance_type" {
  value = aws_instance.openvpn.instance_type
}
output "security_group_id" {
  value = aws_instance.openvpn.security_groups
}
output "subnet_id" {
  value = aws_instance.openvpn.subnet_id
}
output "key_name" {
  value = aws_instance.openvpn.key_name
}
