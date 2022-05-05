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
    cidr_block           = "10.0.1.0/16"
    enable_dns_support   = "true"
    enable_dns_hostnames = "true"
    tags = {
      Name = "worker-vpc-jenkins"
  }
}

resource "aws_internet_geteway" "igw_master" {
    provider = "aws.region_master"
    vpc_id = "aws_vpc.vpc_master.id"
} 

resource "aws_internet_geteway" "igw_worker" {
    provider = "aws.region_worker"
    vpc_id = "aws_vpc.vpc_worker.id"
} 