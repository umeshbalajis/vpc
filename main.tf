#Declaring AWS Provider and credentials
provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAQ23MP3SX6MODX3II"
  secret_key = "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"
}
#######################################################
#Creating Production VPC with CIDR: 172.16.0.0/16
resource "aws_vpc" "vpc" {
    cidr_block = "172.16.0.0/16" 
    tags = {
        Name = "UAT VPC"
    }
}
output "vpcid" {
  value = aws_vpc.vpc.id
}
###########################################################
