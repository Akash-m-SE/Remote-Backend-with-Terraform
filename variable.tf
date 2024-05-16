variable "ami" {
  description = "Ami Id for EC2 instance"
  type        = string
  default     = "ami-01e444924a2233b07"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "subnet id for vpc"
  type        = string
  default     = "subnet-0dd5def09a318331c" //this is some random string since i do not want  to create a vpc for a subnet
}
