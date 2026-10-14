terraform {
  backend "s3" {
    bucket       = "shoyemi-tfstate-1691127218"
    key          = "nginx-demo/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
