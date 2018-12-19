#############################################################
##
## This app file contains the Variables of Kubernetes installation flows for 
## HighCloud Kubernetes Terraform Module 
## 
## @package /highcloud-k8s/
## @year 2018
## @author Muhammet Arslan <muhammet.arslan@highcloud.team>
##
#############################################################

## Cluster Specification
variable "cluster_name" {
  description = "The name of the Kubernetes cluster used in tags"
  default     = ""
}

variable "cluster_domain" {
  description = "The Slug of the Kubernetes cluster used in cluster specs"
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

## Networking Options
variable "vpc_id" {
  description = "The ID of the VPC"
  default     = ""
}

variable "private_subnet_list" {
  description = "Private Subnet List"
  default     = []
}

variable "public_subnet_list" {
  description = "Public Subnet List"
  default     = []
}

variable "internal_tld" {
  description = "The TLD of the Kubernetes cluster"
  default     = ""
}

## EC2 Configurations
variable "key_pair" {
  description = "Name of the ec2 KeyPair"
  default     = ""
}

variable "master_ami" {
  description = "AMI Id for the Master Nodes"
  default     = ""
}

variable "nodes_ami" {
  description = "AMI Id for the Worker Nodes"
  default     = ""
}

variable "master_instance_type" {
  description = "Instance Type for the Master Nodes"
  default     = ""
}

variable "nodes_instance_type" {
  description = "Instance Type for the Worker Nodes as a List"
  default = ""
}

variable "master_instance_count" {
  description = "Instance Count for the Master Nodes"
  default     = ""
}

variable "nodes_instance_min_count" {
  description = "Minimum Instance Count for the Worker Nodes"
  default = ""
}

variable "nodes_instance_max_count" {
  description = "Maximum Instance Count for the Worker Nodes"
  default = ""
}

variable "nodes_instance_desired_count" {
  description = "Desired Instance Count for the Worker Nodes"
  default = ""
}

## EBS Options
variable "ebs_size" {
  description = "Size of the EBS Volumes for ETCD"
  default     = ""
}

variable "ebs_type" {
  description = "Type of the EBS Volumes for ETCD"
  default     = "standard"
}

variable "ebs_encrypted" {
  description = "Encryption of the EBS Volumes for ETCD"
  default     = "True"
}
