module "web-server-app" {
  source                = "./modules/aws/web-server"
  aws-owners            = [var.aws-owners]
  aws_region            = var.aws_region
  instance_type         = "t2.micro"
  server_name           = "web-server-app"
  vpc_cidr_block        = "11.10.0.0/16"
  vpc_subnet_cidr_block = "11.10.1.0/28"
  web_server_port       = "8081"
}
