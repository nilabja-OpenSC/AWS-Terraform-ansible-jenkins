#resource "aws_vpc_peering_connection" "useast1-uswest2" {
#    provider = aws.region_master
#    peer_vpc_id = aws_vpc.vpc_worker.id
#    vpc_id = aws_vpc.vpc_master.id
#    peer_region = var.region_worker
#}