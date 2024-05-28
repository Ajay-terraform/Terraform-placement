terraform {
  backend "s3" {
     bucket = "state-file12"
     key = "terraform.tfstate"
     region = "ap-south-1"
  }
}
