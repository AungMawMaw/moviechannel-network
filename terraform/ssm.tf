resource "aws_ssm_parameter" "moviechannel_region" {
  name  = "/${var.var_app_name}/${var.var_dev_prod}/${var.var_aws_region}"
  type  = "String"
  value = var.aws_region
}

resource "aws_ssm_parameter" "moviechannel_vpc_id" {
  name  = "/${var.var_app_name}/${var.var_dev_prod}/${var.var_aws_vpc_id}"
  type  = "String"
  value = aws_vpc.vpc.id
}
resource "aws_ssm_parameter" "moviechannel_public1_subnet_id" {
  name  = "/${var.var_app_name}/${var.var_dev_prod}/${var.var_aws_public1_subnet_id}"
  type  = "String"
  value = aws_subnet.public_1.id
}

resource "aws_ssm_parameter" "moviechannel_public2_subnet_id" {
  name  = "/${var.var_app_name}/${var.var_dev_prod}/${var.var_aws_public2_subnet_id}"
  type  = "String"
  value = aws_subnet.public_2.id
}

resource "aws_ssm_parameter" "moviechannel_private1_subnet_id" {
  name  = "/${var.var_app_name}/${var.var_dev_prod}/${var.var_aws_private1_subnet_id}"
  type  = "String"
  value = aws_subnet.private_1.id
}

resource "aws_ssm_parameter" "moviechannel_private2_subnet_id" {
  name  = "/${var.var_app_name}/${var.var_dev_prod}/${var.var_aws_private2subnet_id}"
  type  = "String"
  value = aws_subnet.private_2.id
}

data "aws_ssm_parameters_by_path" "moviechannel_parameters" {
  # name = "/${var.var_app_name}/${var.var_dev_prod}/${var.var_movies_table}"
  path = "/${var.var_app_name}/${var.var_dev_prod}/"
}

output "moviechannel_parameters" {
  value = [
    {
      name : data.aws_ssm_parameters_by_path.moviechannel_parameters.names
      value : data.aws_ssm_parameters_by_path.moviechannel_parameters.values
    }
  ]
  sensitive = true
}


