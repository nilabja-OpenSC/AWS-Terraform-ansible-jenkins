providers "aws" {
    profile = "var.profile"
    alias = "region_master"
    region = "var.region_master"
}

providers "aws" {
    profile = "var.profile"
    alias = "region_worker"
    region = "var.region_worker"
}