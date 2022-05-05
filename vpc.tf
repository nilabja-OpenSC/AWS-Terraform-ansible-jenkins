resource "aws_vpc" "vpc_master" {
    provider             = aws.region_master
    cidr_block           = "10.0.0.0/16"
    enable_dns_support   = "true"
    enable_dns_hostnames = "true"
    tags = {
      Name = "master-vpc-jenkins"
  }
}


resource "aws_vpc" "vpc_worker" {
    provider             = aws.region_worker
    cidr_block           = "10.1.0.0/16"
    enable_dns_support   = "true"
    enable_dns_hostnames = "true"
    tags = {
      Name = "worker-vpc-jenkins"
  }
}

resource "aws_internet_gateway" "igw_master" {
    provider = aws.region_master
    vpc_id = aws_vpc.vpc_master.id
    tags = {
      Name = "master-vpc-igw"
  }   
} 

resource "aws_internet_gateway" "igw_worker" {
    provider = aws.region_worker
    vpc_id = aws_vpc.vpc_worker.id
    tags = {
      Name = "worker-vpc-igw"
  }   
} 