output "ecs_task_definition_arn" {
  description = "ARN de la definición de tareas ECS"
  value       = aws_ecs_task_definition.ecs_task.arn
}

output "execution_role_arn" {
  description = "ARN del rol de ejecución para ECS"
  value       = aws_iam_role.ecs_task_execution_role.arn
}

output "log_group_name" {
  description = "Nombre del grupo de logs en CloudWatch"
  value       = aws_cloudwatch_log_group.ecs_log_group.name
}