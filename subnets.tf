resource "aws_subnet" "master_public_subnet_1"{
    provider = aws.region_master
    availability_zone = element(data.aws_availability_zones.azs.names, 0)
    vpc_id = aws_vpc.vpc_master.id
    cidr_block = "10.0.0.0/24"
}

resource "aws_subnet" "master_public_subnet_2"{
    provider = aws.region_master
    availability_zone = element(data.aws_availability_zones.azs.names, 1)
    vpc_id = aws_vpc.vpc_master.id
    cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "worker_public_subnet_1"{
    provider = aws.region_worker
    availability_zone = element(data.aws_availability_zones.azs_worker.names, 0)
    vpc_id = aws_vpc.vpc_master.id
    cidr_block = "10.1.0.0/24"
}

resource "aws_subnet" "worker_public_subnet_2"{
    provider = aws.region_worker
    availability_zone = element(data.aws_availability_zones.azs_worker.names, 1)
    vpc_id = aws_vpc.vpc_master.id
    cidr_block = "10.1.1.0/24"
}