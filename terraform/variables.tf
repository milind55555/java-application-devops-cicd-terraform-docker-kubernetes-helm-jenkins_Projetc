variable "region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "java-eks-cluster"
}

variable "node_instance_type" {
  default = "t3.medium"
}

variable "desired_size" {
  default = 2
}
