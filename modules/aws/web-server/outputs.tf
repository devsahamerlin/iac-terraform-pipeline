output "web-server-address" {
  value = aws_instance.serveur-web.public_dns
}