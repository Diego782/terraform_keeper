output "ecs_service_name" {
  description = "Nombre del servicio ECS"
  value       = aws_ecs_service.main.name
}

output "ecs_service_arn" {
  description = "ARN del servicio ECS"
  value       = aws_ecs_service.main.id
}

output "alb_name" {
  description = "Nombre del Application Load Balancer (ALB)"
  value       = aws_lb.main.name
}

output "alb_arn" {
  description = "ARN del Application Load Balancer (ALB)"
  value       = aws_lb.main.arn
}

output "alb_dns_name" {
  description = "DNS del Application Load Balancer (ALB)"
  value       = aws_lb.main.dns_name
}

output "target_group_arn" {
  description = "ARN del Target Group"
  value       = aws_lb_target_group.main.arn
}

output "target_group_name" {
  description = "Nombre del Target Group"
  value       = aws_lb_target_group.main.name
}