# Resource Block
# Resource-1: Create VPC
resource "aws_vpc" "my_vpc1" {
  cidr_block = "172.16.0.0/18"
  tags = {
    Name = "Terraform_Created_VPC1_Udemy"
  }  
}
