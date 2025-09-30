# terraform {
#   cloud {
#     organization = "ORGNAME"

#     workspaces {
#       name = "dev_tf_resources_ws"
#     }
#   }
# }

terraform {
  backend "s3" {
    bucket = "qa-backup-1020"
    key    = "terraformstates/qa.tfstate"
    region = "ap-south-1"
  }
}

