# Variables


# Map Users

variable "aws_auth_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::<account id>:user/<username>"
      username = "<username>"
      groups   = ["system:masters"]
    }
  ]
}


# Local Variables

locals {
  name            = "my-cluster"
  cluster_version = "1.22"
  region          = "ap-southeast-1"
  project         = "<project name>"
  key             = "<key pair in aws>"
  vpc             = "<vpc id>"
  public_subnets  = ["<public subnets id>"]
  private_subnets = ["<private subnets id>"]
  userdata        = "" # add any commands to append to user data if needed
}
