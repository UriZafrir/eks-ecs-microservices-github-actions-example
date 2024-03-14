variable "peer_vpc_id" {
  description = "The ID of the peer VPC for peering connection."
  type        = string
  default     = "vpc-013a5f430cc61641d"
}

variable "db_security_group_id" {
  description = "The ID of the database security group."
  type        = string
  default     = "sg-07ce994535f7be639"
}

variable "peer_vpc_cidr" {
  description = "The cidr of the peer VPC for peering connection."
  type        = string
  default     = "10.0.0.0/16"
}
variable "peer_vpc_route_table_id" {
  description = "The table of the peer VPC for peering connection."
  type        = string
  default     = "rtb-09514bf630c7eb4c3"
}
# variable "peer_vpc_private_subnets" {
#   description = "List of private subnets in the peered VPC"
#   type        = list(string)
#   default     = [
#     "subnet-0cfb6ea70b3a80760",
#     "subnet-0f9d6e3234742f47c"
#   ]
# }
