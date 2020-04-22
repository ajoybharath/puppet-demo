output "puppet-master_public_ip" {
  value = [aws_instance.puppet-master.public_ip]
}

output "puppet-client_public_ip" {
  value = [aws_instance.puppet-client.public_ip]
}
