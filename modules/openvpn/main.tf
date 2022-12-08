terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.7"
    }
  }
}

resource "aws_instance" "openvpn" {
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = var.vpc_security_group_ids
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  user_data                   = <<-EOL
  #!/usr/local/bin/env bash
  sudo su
  apt -y update
  apt -y upgrade
  apt update && apt -y install ca-certificates wget net-tools gnupg
  wget https://as-repository.openvpn.net/as-repo-public.asc -qO /etc/apt/trusted.gpg.d/as-repository.asc
  echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/as-repository.asc] http://as-repository.openvpn.net/as/debian jammy main">/etc/apt/sources.list.d/openvpn-as-repo.list
  apt update && apt -y install openvpn-as
  EOL

  tags = {
    Name = "OpenVPN"
  }
}

resource "aws_eip" "vpn_access_server" {
  instance = aws_instance.openvpn.id
  vpc      = true
}

output "vpn_access_server_ip" {
  value = aws_eip.vpn_access_server.public_ip
}
