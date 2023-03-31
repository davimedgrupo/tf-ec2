data "template_file" "startup" {
 template = file("${path.module}/ssm-agent-installer.sh")
}

resource "aws_instance" "msk-staging" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = var.key_name # Insira o nome da chave criada antes.
  subnet_id                   = var.subnet_public_id
  vpc_security_group_ids      = [var.security_group]
  associate_public_ip_address = true
  iam_instance_profile = "ssm-ec2access-role"

 
   user_data = data.template_file.startup.rendered
  

}