# We need to define the node_role_arn variable in the main.tf file again
# because the module development is using the infra module and the node_role_arn variable is required.
# At GitHub Actions
variable "node_role_arn" {
  description = "The ARN of the node role"
  type        = string
}

module "development" {
  source = "../../infra"

  aws_profile = "academy"
  aws_region  = "us-east-1"
  availability_zones = ["us-east-1a", "us-east-1b"]
  cluster_name = "basic-app-cluster"
  node_role_arn = "NOT_DEFINED"
  instance_type = "t3.medium" # It should be a larger one due to aws resources
  ssh_key_name = "aws-ec2-access"
  # ssh_key = "~/.ssh/aws-ec2-access"
  environment = "dev"
  kubernetes_namespace = "default"
}

