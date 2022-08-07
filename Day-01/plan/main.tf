provider "aws" {
    region = lookup(var.aws_details, "region")
}

resource "aws_instance" "create_ec2" {
    for_each = toset(var.instances_name)

    ami = lookup(var.aws_details, "ami")
    instance_type = lookup(var.aws_details, "instance_type")
    vpc_security_group_ids = [lookup(var.aws_details, "security_group_id")]
    subnet_id = lookup(var.aws_details, "subnet")
    associate_public_ip_address = lookup(var.aws_details, "publicip")
    key_name = lookup(var.aws_details, "key_pair")
    
    tags = {
      Name = each.key 
      Terraform = true
      Env = lookup(var.aws_details, "env")
    }
}