# # We need to define those variables in the main.tf file again
# # because the module development is using the infra module and the node_role_arn variable is required.
# # At GitHub Actions
# variable "aws_profile" {
#   description = "Profile from AWS"
#   type        = string
# }

# variable "aws_region" {
#   description = "The AWS region where the resources will be provisioned"
#   type        = string
# }

# variable "aws_access_key" {
#   description = "The AWS access key"
#   type        = string
# }

# variable "aws_secret_key" {
#   description = "The AWS secret key"
#   type        = string
# }

# variable "aws_session_token" {
#   description = "The AWS session token"
#   type        = string
# }

# variable "node_role_arn" {
#   description = "ARN of the IAM Role that will be associated with the Node Group"
#   type        = string
# }

# variable "environment" {
#   description = "The environment of the application"
#   type        = string
#   # Environments are often things such as development, integration, or production.
#   default = "development"
# }

# variable "kubernetes_namespace" {
#   description = "The Kubernetes namespace where the resources will be provisioned"
#   type        = string
#   default     = "default"
# }

# variable "cluster_name" {
#   description = "Name of the EKS Cluster"
#   type        = string
# }

# variable "availability_zones" {
#   description = "List of availability zones where the subnets will be created"
#   type        = list(string)
#   default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
# }

# variable "instance_type" {
#   description = "EC2 instance type"
#   type        = string
#   default     = "e2.micro"
# }

# variable "ssh_key_name" {
#   description = "The name of the SSH key pair to associate with the EC2 instance"
#   type        = string
#   default     = "aws-ec2-access"
# }

# variable "ssh_key" {
#   description = "The SSH key to use for connecting to the EC2 instance"
#   type        = string
#   default     = "~/.ssh/aws-ec2-access"
# }


# module "development" {
#   source = "../../infra"

#   aws_profile        = var.aws_profile
#   aws_region         = var.aws_region
#   aws_access_key     = var.aws_access_key
#   aws_secret_key     = var.aws_secret_key
#   aws_session_token  = var.aws_session_token
#   node_role_arn      = var.node_role_arn
#   availability_zones = ["us-east-1a", "us-east-1b"]
#   cluster_name       = "basic-app-cluster"
#   instance_type      = "t3.medium" # It should be a larger one due to aws resources
#   ssh_key_name       = "aws-ec2-access"
#   # ssh_key = "~/.ssh/aws-ec2-access"
#   environment          = "dev"
#   kubernetes_namespace = "default"
# }

