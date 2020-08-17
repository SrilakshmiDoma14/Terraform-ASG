variable "AWS_ACCESS_KEY" {
    default= "AKIA5RO5OSCP756SXNXF"
} 

variable AWS_SECRET_KEY {
    default= "UgB8OLNxNd4XPY/HcmzAfWc29Qox2GrcEG/peg5P"
}

variable "AWS_REGION" {
    default = "us-east-2"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the private subnet"
  default = "10.0.2.0/24"
}





