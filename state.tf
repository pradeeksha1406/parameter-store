terraform {
  backend "s3"{
    bucket = "terraform-p100"
    key    = "parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}
