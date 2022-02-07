provider "aws"{
    region = "ap-south-1"
}

resource "aws_vpc" "terraform-vpc1"{
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = var.inputname
        Department = var.vpc_tags[0]
        Budget = var.vpc_tags[1]
    }
} 

variable "inputname" {
    type = string
    description = "Set a name for the VPC: " 
}

variable "vpc_tags" {
    type = list(string)
    default = ["Production", "Unlimited"]
}

output "vpc_id" {
    value = aws_vpc.terraform-vpc1.id
}