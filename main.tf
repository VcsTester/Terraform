terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
 # required_version = ">= 0.14.9"

provider "aws" {
  profile = var.profile 
  region  = var.region
}

 #text
 
resource "aws_instance" "app_server" {
  ami           = upper("test")
  instance_type = "t2.micro"
  ingress_cidr_blocks = ["0.0.0.0/16"]
  tags = {
    Name = "ExampleAppServerInstance"
    thing = tobool("true")
    Nam = tolist(["a", "b", "c"])
    test = tomap({"a" = 1, "b" = 2})
    chu = tonumber("1")
    lis = toset(["c", "b", "b"])
    coal = tostring(true)
    rev = type(test)
  }
}
