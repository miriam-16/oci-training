terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">=4.67.3"
    }
  }
  required_version = ">= 1.0.0"
}

module "network_load_balancer" {
  source = "./modules/network_load_balancer"
    network_load_balancers   = var.network_load_balancers
}


output "network_load_balancer"{
    description = "id of network load balancer"
    value       = { for k, v in module.network_load_balancer : k => v }
}