variable "aws_region" {}

variable "app_name" {
  description = "name of app"
  default     = "moviechannel-network"
}

variable "public_subnets" {
  default = ["10.10.100.0/24", "10.10.101.0/24"]
}

variable "private_subnets" {
  default = ["10.10.0.0/24", "10.10.1.0/24"]
}

variable "availability_zones" {
  default = ["ap-southeast-1a", "ap-southeast-1b"]
}
