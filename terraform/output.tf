output "aws_region" {
  value = var.aws_region
}

# for subnet
output "aws_subnet_id_public1" {
  value = aws_subnet.public_1.id
}
output "aws_subnet_id_public2" {
  value = aws_subnet.public_2.id
}
output "aws_subnet_id_private1" {
  value = aws_subnet.private_1.id
}
output "aws_subnet_id_private2" {
  value = aws_subnet.private_2.id
}

#vpc id
output "aws_vpc_id" {
  value = aws_vpc.vpc.id
}
