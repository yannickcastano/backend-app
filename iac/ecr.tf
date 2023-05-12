resource aws_ecr_repository "repository" {
  name                 = "ebilling-ecr-${var.ebillingid}"
  image_tag_mutability = "MUTABLE"

  tags = merge({
    git_commit           = "e6d83b21346fe85d4fe28b16c0b2f1e0662eb1d7"
    git_file             = "iac/ecr.tf"
    git_last_modified_at = "2023-04-27 12:47:51"
    git_last_modified_by = "nsadkfjh@lsajdf.com"
    git_modifiers        = "ricardo7364/ricardo"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "7a3ec657-fa54-4aa2-8467-5d08d6c90bc2"
    })
}