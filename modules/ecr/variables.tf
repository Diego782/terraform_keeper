variable "repository_name" {
  description = "Nombre del repositorio ECR"
  type        = string
}

variable "image_tag_mutability" {
  description = "Define si las etiquetas de las imágenes son mutables o inmutables"
  type        = string
  default     = "MUTABLE" # Puede ser "MUTABLE" o "IMMUTABLE"
}

variable "tags" {
  description = "Etiquetas para el repositorio ECR"
  type        = map(string)
  default     = {}
}