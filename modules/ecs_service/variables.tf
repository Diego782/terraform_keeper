variable "lb_name" {
  description = "Nombre del balanceador de carga"
  type        = string
}

variable "target_group_name" {
  description = "Nombre del target group"
  type        = string
}

variable "target_group_port" {
  description = "Puerto del target group"
  type        = number
}

variable "listener_port" {
  description = "Puerto del listener"
  type        = number
  default     = 80
}

variable "vpc_id" {
  description = "ID de la VPC donde se creará el ALB y el target group"
  type        = string
}

variable "subnets" {
  description = "Lista de subnets donde se creará el ALB"
  type        = list(string)
}

variable "security_groups" {
  description = "Lista de grupos de seguridad para el ALB y el servicio ECS"
  type        = list(string)
}

variable "service_name" {
  description = "Nombre del servicio ECS"
  type        = string
}

variable "cluster_arn" {
  description = "ARN del cluster ECS"
  type        = string
}

variable "task_definition_arn" {
  description = "ARN de la definición de tareas ECS"
  type        = string
}

variable "container_name" {
  description = "Nombre del contenedor en la definición de tareas"
  type        = string
}

variable "container_port" {
  description = "Puerto del contenedor en la definición de tareas"
  type        = number
}

variable "desired_count" {
  description = "Número deseado de tareas ECS"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Etiquetas para los recursos"
  type        = map(string)
  default     = {}
}