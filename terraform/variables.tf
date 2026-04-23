# 🌍 Region
variable "region" {
  default = "ap-south-1"
}

# 🌐 VPC CIDR
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

# 🌐 Public Subnet
variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

# 🔒 Private Subnet
variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

# 🔑 EC2 Key Pair (NEW)
variable "key_name" {
  description = "EC2 Key Pair Name"
}