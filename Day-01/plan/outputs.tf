output "instance_name" {
    value = values(aws_instance.create_ec2)[*].tags.Name
}

output "instance_public_dns" {
    value = values(aws_instance.create_ec2)[*].public_dns
}

output "instance_public_ip" {
    value = values(aws_instance.create_ec2)[*].public_ip
}