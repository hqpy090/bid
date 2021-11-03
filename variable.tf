/********
variables
*********/

variable "vpc_cidr" {
  description = "The CIDR Block for the SiteSeer VPC"
  default     = "10.0.0.0/16"
}

variable "rt_wide_route" {
  description = "Route in the SiteSeer Route Table"
  default     = "0.0.0.0/0"
}

variable "public_cidrs" {
  description = "Public Subnet CIDR Blocks"
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "private_cidrs" {
  description = "Public Subnet CIDR Blocks"
  default = [
    "10.0.3.0/24",
    "10.0.4.0/24"
  ]
}

variable "flask_app_image" {
  description = "Dockerhub image for flask-app"
  default     = "docker.io/perrini1/bidnamic:2.0"
}

variable "flask_app_port" {
  description = "Port exposed by the flask application"
  default     = 8080
}

variable "flask_env" {
  description = "FLASK ENV variable"
  default     = "production"
}

variable "flask_app" {
  description = "FLASK APP variable"
  default     = "app"
}

variable "app_home" {
  description = "APP HOME variable"
  default     = "flask-postgres/src/"
}

variable "postgres_db_port" {
  description = "Port exposed by the RDS instance"
  default     = 5432
}

variable "rds_instance_type" {
  description = "Instance type for the RDS database"
  default     = "db.t2.micro"
}
variable "rds_storage_type" {
  description = "db storage type"
  default     = "gp2"
}

variable "rds_engine" {
  description = "type of db engine"
  default     = "postgres"
}
variable "rds_engine_version" {
  description = "db engine version"
  default     = "12"
}
variable "rds_username" {
  description = "db username"
  default     = "xxxxx"
}
variable "rds_password" {
  description = "db password"
  default     = "xxxxxx"
}
variable "rds_name" {
  description = "db_bidnamic"
  default     = ""

}
variable "rds_allocated_storage" {
  description = "db allocated storage"
  default     = 20
}
variable "region" {
  description = "eu-west-2"
  default     = "eu-west-2"

}
variable "cloudwatch_group" {
  description = "CloudWatch group name."
  type        = string
  default     = "flask-app"
}
