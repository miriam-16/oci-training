output "compartment_id" {
    description = "id of the compartment where to create all resources"
    value       = oci_identity_compartment.test_compartment.id
}

output "name" {
    description = "name of the compartment where to create all resources"
    value       = oci_identity_compartment.test_compartment.name
}

output "description"{
    description = "description of the compartment where to create all resources"
    value       = oci_identity_compartment.test_compartment.description
}