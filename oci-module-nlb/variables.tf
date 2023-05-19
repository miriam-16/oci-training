variable "compartment_id" {
  description = "OCID from your tenancy page"
  type        = string
}

variable "name"{
  description = "name of the compartment where to create all resources"
  type        = string 
}

variable "region" {
  description = "region where you have OCI tenancy"
  type        = string
  default     = "eu-frankfurt-1"
}

/*
variable "subnet" {
  type = map(object({
    index = number
    display_name = string
    cidr_block = string
    dns_label = string
  }))
}*/

variable "cidr_blocks" {
  type = map(string)
}

variable "subnet" {
  description = "Configuration of subnets"
  type = any
}

variable "description" {
    description = "description of the compartment where to create all resources"
    type=string
}

 variable "display_name"{
    description = "name of network load balancer"
    type=string
}

variable "is_private"{
    description = "is private network load balancer"
    type=bool
}

variable "subnet_id" {
    description = "subnet id where to create network load balancer"
    type=string
}

variable "listener_name"{
    description = "name of listener"
    type=string
}

variable "default_backend_set_name"{
    type=string
    description = "name of default backend set"
}

variable "listener_port"{
    type=string
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
  description = "port of backend"
}

variable "backend_set_health_checker_port"{
  type = number
  description = "value"
}

variable "network_load_balancers"{
  type        = any
  description = "network load balancer object"
}

variable "ip_address" {
    type = string
    description = "value of ip address"
}