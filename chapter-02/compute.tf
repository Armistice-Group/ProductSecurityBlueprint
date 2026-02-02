# Create the named Data Interface in the 'Vault'
resource "aws_network_interface" "redshift_access_eni" {
  subnet_id       = module.network_bedrock.database_subnets[0]
  security_groups = [aws_security_group.data_vault_sg.id]

  description = "Dedicated interface for secure Data Tier access"

  tags = {
    Name = "eni-data-tier-${var.project_name}"
  }
}

# Attach to the App Server
resource "aws_network_interface_attachment" "app_to_data" {
  instance_id          = aws_instance.app_server.id
  network_interface_id = aws_network_interface.redshift_access_eni.id
  device_index         = 1 # eth1
}
