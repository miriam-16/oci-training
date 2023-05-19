variable "description" {
    description = "description of the compartment where to create all resources"
    type        = string
    default     = "" 
}
  
variable "compartment_id" {
  description = "value of the compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "name" {
  description = "name of the compartment where to create all resources"
  type        = string
  default     = "innerCompartment"
}

variable "backend_port" {
  type = number
  description = "port of backend"
}