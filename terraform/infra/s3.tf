terraform {
  backend "s3" {
    bucket = "basic-app-terraform-remote-state"
    key    = "development/backend.tfstate"
    # region = var.aws_region
    # Variables doesn't work here :(
    region = "us-east-1"
  }
}
