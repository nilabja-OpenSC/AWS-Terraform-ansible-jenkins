data "aws_availability_zones" "azs" {
    provider = aws.region_master
    state = "available"
}

data "aws_availability_zones" "azs_worker" {
    provider = aws.region_worker
    state = "available"
}