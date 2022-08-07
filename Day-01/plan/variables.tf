variable "instances_name" {
    type = list(string)
    default = [
      "k8s-01",
      "k8s-02",
      "k8s-03",
    ]
}

variable "aws_details" {
    type = map(string)
    default = {
      region = "eu-west-1"
      subnet = "subnet-f7b4ec81"
      publicip = true
      key_pair = "opa"
      instance_type = "t3.small"
      security_group_id = "sg-021e42adc9b059ff0"
      ami = "ami-0d2a4a5d69e46ea0b"
      env = "dev" 
    }   
}