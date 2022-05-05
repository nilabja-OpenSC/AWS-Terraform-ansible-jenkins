variable "profile" {
    type = string
    default = "default"
}

variable "region_master" {
    type = string
    default = "us-east-1"
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