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

## var for ssm
variable "var_app_name" {
  default = "moviechannel"
  type    = string
}
variable "var_dev_prod" {
  default = "dev"
  type    = string
}
variable "var_aws_region" {
  default = "AWS_REGION"
  type    = string
}
variable "var_aws_vpc_id" {
  type        = string
  description = "Aws VPC id deployed for network repo"
  default     = "AWS_VPC_ID" #vpc_id
}
variable "var_aws_public1_subnet_id" {
  description = " public1 subnet id"
  default     = "AWS_PUBLIC1_SUBNET_ID" #subnet id
}
variable "var_aws_public2_subnet_id" {
  description = "public2 subnet id"
  default     = "AWS_PUBLIC2_SUBNET_ID" #subnet id
}
variable "var_aws_private1_subnet_id" {
  description = " private1 subnet id"
  default     = "AWS_PRIVATE1_SUBNET_ID" #subnet id
}
variable "var_aws_private2subnet_id" {
  description = "private2 subnet id"
  default     = "AWS_PRIVATE2_SUBNET_ID" #subnet id
}
