# reference:https://registry.terraform.io/providers/hashicorp/aws/latest/docs#argument-reference
provider "aws" {
region = "ap-south-1"
}

# reference:https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#argument-reference
resource "aws_instance" "myvm1" {
 ami = "ami-079b5e5b3971bd10d"
 instance_type = "t2.micro"

  tags = {
 Name = "webserver1"
 Application = "CRM"
 }
}

