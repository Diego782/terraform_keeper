variable "repository_name" {
  description = "Nombre del repositorio ECR"
  type        = string
}

variable "image_tag_mutability" {
  description = "Define si las etiquetas de las imágenes son mutables o inmutables"
  type        = string
  default     = "MUTABLE"
}

variable "tags" {
  description = "Etiquetas para los recursos"
  type        = map(string)
}