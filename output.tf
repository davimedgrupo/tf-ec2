output "public_ip" {
  description = "Public IP of instance (or EIP)"
  value       = concat( aws_instance.msk-staging.*.public_ip, [""])[0]
}

output "private_ip" {
  description = "Private IP of instance"
  value       = join("", aws_instance.msk-staging.*.private_ip)
}

output "private_dns" {
  description = "Private DNS of instance"
  value       = join("", aws_instance.msk-staging.*.private_dns)
}
output "id" {
  description = "Disambiguated ID of the instance"
  value       = join("", aws_instance.msk-staging.*.id)
}

output "arn" {
  description = "ARN of the instance"
  value       = join("", aws_instance.msk-staging.*.arn)
}


output "ssh_key_pair" {
  description = "Name of the SSH key pair provisioned on the instance"
  value       = var.key_name
}

