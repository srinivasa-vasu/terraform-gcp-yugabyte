variable "prefix" {
  type = string
}

variable "identifier" {
  type    = string
  default = "lb"
}

variable "global" {
  type = string
}

variable "vpc_network" {
  type = string
}

variable "health_check" {}

variable "ports_forward" {
  type = list
}

variable "ports" {
  type    = list
  default = []
}

variable "instances" {
  type    = list
  default = []
}

variable "health_check_port" {
  default = 80
}

variable "health_check_interval" {
  default = 10
}

variable "health_check_timeout" {
  default = 3
}

variable "health_check_healthy_threshold" {
  default = 6
}

variable "health_check_unhealthy_threshold" {
  default = 3
}

variable "target_tags" {
  default = []
  type    = list
}