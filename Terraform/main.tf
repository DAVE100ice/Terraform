# main.tf - us-east-1 region
provider "aws" {
  alias = "Dave"
  region = "us-east-1"
}

resource "aws_instance" "region1" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  tags = {
    Name = "region1"
  }
}

# main-us-west-2.tf - us-west-2 region
provider "aws" {
  alias = "essy"  
  region = "us-west-2"
}

resource "aws_instance" "region2" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  tags = {
    Name = "region2"
  }
}
