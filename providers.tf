provider "aws" {
    profile = var.profile
    alias = "region_master"
    region = var.region_master
}

provider "aws" {
    profile = var.profile
    alias = "region_worker"
    region = var.region_worker
}