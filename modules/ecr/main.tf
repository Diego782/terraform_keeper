resource "aws_ecr_repository" "main" {
  name                 = var.repository_name
  image_tag_mutability = var.image_tag_mutability
  encryption_configuration {
    encryption_type = "AES256"
  }
  tags = var.tags
}