### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "layer-new.tfstate"
    region = "us-east-1"
  }
}
