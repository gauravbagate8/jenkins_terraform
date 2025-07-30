output "instance_public_ip_addr" {
  value = aws_instance.test2[0].public_ip
}

output "instance_private_ip_addr" {
  value = aws_instance.test2[0].private_ip
}

