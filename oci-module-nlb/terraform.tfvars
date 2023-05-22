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