//tenancy_id       = "ocid1.tenancy.oc1..aaaaaaaavief5qv75cvhz4x56esqwflkh5sb65vhuazlsvzrgizfhsrlblca"
compartment_id   = "ocid1.compartment.oc1..aaaaaaaafbcbs62msxdciih32hfjrl6zqgrvfkcu7om3nviwi6bnsfnar7aa"
name             = "compartmentForLoadBalancer"
description      = "Compartment for Load Balancer"
display_name     = "NLB_v3"
subnet_id        = "ocid1.subnet.oc1.eu-frankfurt-1.aaaaaaaagcbsqdqwlkvfsowqfpuraxuxeipnw5wwxz6fykfue5zhttjmkfna"
is_private       = true
default_backend_set_name = "backendset1"
backend_set_name = "backendset1"
region           = "eu-frankfurt-1"
listener_name    = "listener1"
listener_port    = "22"
listener_protocol = "TCP"
backend_set_policy = "FIVE_TUPLE"
ip_address      = "10.0.0.1"
backend_set_health_checker_protocol = "TCP"
backend_set_health_checker_port = 22
backend_port = "22"
cidr_blocks = {
  "1" = "172.16.0.0/24"
  "2" = "172.16.1.0/24"
}


subnet = {
  firstinstance = {
    cidr_block    = "172.16.0.0/24"
    dns_label     = "dev1"
    display_name  = "Dev -- subnet 1"
  }
/*
  secondinstance = {
    cidr_block    = "172.16.1.0/24"
    dns_label     = "dev2"
    display_name  = "Dev -- subnet 2"
  }

  thirdinstance = {
    cidr_block    = "172.16.2.0/24"
    dns_label     = "dev3"
    display_name  = "Dev -- subnet 3"
  }
*/
}


network_load_balancers = {
  first = {
    compartment_id   = "ocid1.compartment.oc1..aaaaaaaafbcbs62msxdciih32hfjrl6zqgrvfkcu7om3nviwi6bnsfnar7aa"
    display_name     = "NLB_v4"
    subnet_id        = "ocid1.subnet.oc1.eu-frankfurt-1.aaaaaaaagcbsqdqwlkvfsowqfpuraxuxeipnw5wwxz6fykfue5zhttjmkfna"
    is_private       = true
    listeners = {
      lstn1 = {
        port = 22
        protocol = "TCP"
        default_backend_set_name = "bes_0"
      }
    }
    backend_sets = {
      bes_0= {
        health_checker = {
          protocol = "TCP"
          port = 22
        }
        backends = {
          be_0 = {
            ip_address = "10.0.0.1"
            port = 22
          }
        }
        ip_version = "IPV4"
        is_preserve_source = true
        name = "bes_0"
        policy = "FIVE_TUPLE"
      }
    }
  }
  second = {
    compartment_id   = "ocid1.compartment.oc1..aaaaaaaafbcbs62msxdciih32hfjrl6zqgrvfkcu7om3nviwi6bnsfnar7aa"
    display_name     = "NLB_v4_2"
    subnet_id        = "ocid1.subnet.oc1.eu-frankfurt-1.aaaaaaaagcbsqdqwlkvfsowqfpuraxuxeipnw5wwxz6fykfue5zhttjmkfna"
    is_private       = true
    listeners = {
      lstn1 = {
        port = 22
        protocol = "TCP"
        default_backend_set_name = "bes_0"
      }
    }
    backend_sets = {
      bes_0= {
        health_checker = {
          protocol = "TCP"
          port = 22
        }
        backends = {
          be_0 = {
            ip_address = "10.0.0.1"
            port = 22
          }
        }
        ip_version = "IPV4"
        is_preserve_source = true
        name = "bes_0"
        policy = "FIVE_TUPLE"
      }
    }
  }

}