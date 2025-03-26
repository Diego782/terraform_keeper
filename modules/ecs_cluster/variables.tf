variable "cluster_name" {
  description = "Nombre del cluster ECS"
  type        = string
}

variable "tags" {
  description = "Etiquetas para el cluster ECS"
  type        = map(string)
  default     = {}
}