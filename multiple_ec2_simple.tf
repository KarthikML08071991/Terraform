resource "aws_instance" "multiple-instances" {
    ami = "ami-0c6615d1e95c98aca"
    instance_type = "t2.micro"

    count =  3

    tags = {
        Name = "threeSameInstance"
    }
  
}