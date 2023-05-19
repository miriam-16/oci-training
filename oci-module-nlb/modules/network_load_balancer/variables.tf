variable "network_load_balancers" {
    type = any
    description = "network load balancer object"
}

variable "compartment_id"{
    type=string
    description = "name of compartment where to create network load balancer"
}

variable "lb_backend_sets" {
  description = "Load Balancers Backend Sets"
  type        = any
  default     = {}
}

//TODO: VEDERE QUI
variable "lb_backend_sets_health_checkers" {
  description = "Load Balancers Backend Sets"
  type        = any
  default     = {}
}

variable "display_name"{
    type=string
    description = "name of network load balancer"

}

variable "subnet_id"{
    type=string
    description = "subnet id where to create network load balancer"
}

variable "is_private"{
    type=bool
    description = "is private network load balancer"
    default = true
}

variable "listener_name" {
    type=string
    description = "name of listener"
}

variable "default_backend_set_name"{
    type=string
    description = "name of default backend set"
}

variable "listener_port"{
    type=number
    description = "port of listener"
}

variable "listener_protocol"{
    type=string
    description = "protocol of listener"
}

variable "backend_set_health_checker_protocol"{
    type=string
    description = "protocol of backend set health checker"
}

variable "backend_set_name"{
    type = string
    description = "name of backend set"
}

variable "backend_set_policy"{
    type = string
    description = "policy of backend set"
}

variable "backend_port" {
  type = string
  description = "value of backend port"
}

variable "backend_set_health_checker_port"{
  type = number
  description = "value"
}

variable "ip_address" {
    type = string
    description = "value of ip address"
}