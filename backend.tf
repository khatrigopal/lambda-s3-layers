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
Footer
© 2023 GitHub, Inc.
