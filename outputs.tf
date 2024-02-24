output "aws-web-server-address" {
  value = "http://${module.web-server-app.web-server-address}:8081"
}