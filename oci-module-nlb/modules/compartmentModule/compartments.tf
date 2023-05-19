resource "oci_identity_compartment" "test_compartment" {
    compartment_id  = var.compartment_id
    description     = var.description == "" ? "description set from code" : var.description
    name            = var.name 
}