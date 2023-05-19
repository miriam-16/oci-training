output "network_load_balancer"{
    description = "id of network load balancer"
    value       = { for k, v in var.network_load_balancers : k => v }
}