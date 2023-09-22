terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}
provider "aws" {
    region = "ap-southeast-1"
    access_key = "AKIASGOFNFJT7B7ZQI3R"
    secret_key = "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"
}
resource "aws_instance" "world" {
    ami = "ami-072f48a9ed4f1bbda"
    instance_type = "t2.micro"
}
output "public_ip" {
    value = aws_instance.world.public_ip
}