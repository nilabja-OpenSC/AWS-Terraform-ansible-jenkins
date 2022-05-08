variable "profile" {
    type = string
    default = "default"
}

variable "region_master" {
    type = string
    default = "us-east-2"
}

variable "region_worker" {
    type = string
    default = "us-west-2"
}

variable "environment1" {
    type = string
    default = "master"
}

variable "environment2" {
    type = string
    default = "worker"
}

variable "public_subnet" {
    type = string
    default = "public_subnet"
}

variable "private_subnet" {
    type = string
    default = "private_subnet"
}

variable "lb_443_cidr" {
    type = string
    default = "0.0.0.0/0"
}

variable "lb_80_cidr" {
    type = string
    default = "0.0.0.0/0"
}

variable "external_internet_cidr" {
    type = string
    default = "0.0.0.0/0"
}

variable "workers_count" {
    type = number
    default = 1
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}