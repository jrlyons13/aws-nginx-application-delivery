output "nginx_public_ip" {
  description = "Public IP of the NGINX reverse proxy"
  value       = aws_instance.nginx_proxy.public_ip
}

output "nginx_public_dns" {
  description = "Public DNS of the NGINX instance"
  value       = aws_instance.nginx_proxy.public_dns
}

output "backend1_private_ip" {
  description = "Private IP of backend1"
  value       = aws_instance.backend1.private_ip
}

output "backend2_private_ip" {
  description = "Private IP of backend2"
  value       = aws_instance.backend2.private_ip
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "private_subnet_a_id" {
  description = "Private subnet A ID"
  value       = aws_subnet.private_a.id
}

output "private_subnet_b_id" {
  description = "Private subnet B ID"
  value       = aws_subnet.private_b.id
}