module "ecr" {
  source              = "./modules/ecr"
  repository_name     = "cript_keeper"
  image_tag_mutability = "MUTABLE" # Cambiar a "MUTABLE" si es necesario
  tags = {
    Environment = "dev"
    Project     = "cript_keeper"
  }
}
module "ecs_task_definition" {
  source                = "./modules/ecs_task_definition"
  execution_role_name   = "ecsTaskExecutionRole"
  log_group_name        = "/ecs/cript_keeper"
  log_retention_in_days = 7
  family                = "cript_keeper_task"
  cpu                   = "256"
  memory                = "512"
  container_name        = "cript_keeper"
  container_image       = "257394458777.dkr.ecr.us-east-2.amazonaws.com/cript_keeper:latest"
  container_port        = 9030
  region                = "us-east-2"
}
module "ecs_cluster" {
  source      = "./modules/ecs_cluster"
  cluster_name = "cript_keeper"
  tags = {
    Environment = "dev"
    Project     = "cript_keeper"
  }
}

module "ecs_service" {
  source                = "./modules/ecs_service"
  lb_name               = "lb-cript-keeper"
  target_group_name     = "tg-cript-keeper"
  target_group_port     = 9030
  listener_port         = 80
  vpc_id                = "vpc-083b01be34ec5d274" # Reemplaza con el ID de tu VPC
  subnets               = ["subnet-0b17db2326788f1e5", "subnet-0e06f9065fb285257"] # Reemplaza con tus subnets
  security_groups       = ["sg-06ceef307f417afdb"] # Reemplaza con tu grupo de seguridad
  service_name          = "cript-keeper"
  cluster_arn           = module.ecs_cluster.ecs_cluster_arn
  task_definition_arn   = module.ecs_task_definition.ecs_task_definition_arn
  container_name        = "cript_keeper"
  container_port        = 9030
  desired_count         = 1
  tags = {
    Environment = "dev"
    Project     = "cript_keeper"
  }
}
