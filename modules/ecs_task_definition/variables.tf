variable "execution_role_name" {
  description = "Nombre del rol de ejecución para ECS"
  type        = string
  default     = "ecsTaskExecutionRole"
}

variable "log_group_name" {
  description = "Nombre del grupo de logs en CloudWatch"
  type        = string
  default     = "/ecs/cript_keeper"
}

variable "log_retention_in_days" {
  description = "Número de días para retener los logs en CloudWatch"
  type        = number
  default     = 7
}

variable "family" {
  description = "Nombre de la familia de la definición de tareas ECS"
  type        = string
  default     = "cript_keeper_task"
}

variable "cpu" {
  description = "Cantidad de CPU asignada a la tarea ECS"
  type        = string
  default     = "256" # 0.25 vCPU
}

variable "memory" {
  description = "Cantidad de memoria asignada a la tarea ECS"
  type        = string
  default     = "512" # 512 MiB
}

variable "container_name" {
  description = "Nombre del contenedor"
  type        = string
  default     = "cript_keeper"
}

variable "container_image" {
  description = "Imagen del contenedor (incluyendo la URL del repositorio ECR)"
  type        = string
}

variable "container_port" {
  description = "Puerto del contenedor"
  type        = number
  default     = 9030
}

variable "region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-2"
}