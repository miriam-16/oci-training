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
  for_each = var.network_load_balancers
    network_load_balancers   = var.network_load_balancers
    backend_set_name         = var.backend_set_name
    compartment_id           = var.compartment_id
    display_name             = var.display_name
    subnet_id                = var.subnet_id
    is_private               = var.is_private
    listener_name            = var.listener_name
    default_backend_set_name = var.default_backend_set_name
    listener_port            = var.listener_port
    listener_protocol        = var.listener_protocol
    backend_set_policy       = var.backend_set_policy
    backend_set_health_checker_protocol = var.backend_set_health_checker_protocol
    backend_port             = var.backend_port
    backend_set_health_checker_port = var.backend_set_health_checker_port
    ip_address = var.ip_address
}



resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = var.compartment_id
  display_name   = "VCN -- 1"
} 


resource "oci_core_subnet" "dev" {
  for_each = var.subnet
  vcn_id                      = oci_core_vcn.internal.id
  cidr_block                  = each.value.cidr_block
  compartment_id              = var.compartment_id
  display_name                = each.value.display_name
  prohibit_public_ip_on_vnic  = true
  dns_label                   = each.value.dns_label
} 

output "network_load_balancer"{
    description = "id of network load balancer"
    value       = { for k, v in module.network_load_balancer : k => v }
}