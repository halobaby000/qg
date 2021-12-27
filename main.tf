provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "qmRk:AP-SINGAPORE-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaacr3lr4ull73dvx2zw5ilo76eq4ajwb575bqcbgbtc7aclagrqpoq"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-singapore-1.aaaaaaaalhcrgar6mk4dsa3zndpe3booey2mfvuaxatj3oejggz5uf7a37jq"
	}
	display_name = "instance-20211227-1231"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCbRI5pvlFORiLOvX5QiZLNjX4CJLb/7WJOdk6Mcm5Zp5oAyCbtf0nOcb3c5AEm5YFr8iDWb0fz37AS/N1N+Vc0McRxLSlboU7TPHtKbu1mPCp2NAwwZJkxzi2im7ETKd1Hs+qBOKZeQdxsHQRlpky/5VCZ8q+9IwiA1MdZSkdUgMn5O7dwHbwBQUEO4pGgQFOkVtC/wWeGGQl0UnlQoY6tJC9kQDxQAzk/feNDWdwne+aoSw7BK4GMoK2ub5yFf+BuWa+brTQsMIFXdQFov9mOYEF/9H8sL+XoHaP0p0i4sek+83Z08uuu5zWCu7lltSK8Yf5Jtu0rvktYG5bJllp7 ssh-key-2021-12-27"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "24"
		ocpus = "4"
	}
	source_details {
		source_id = "ocid1.image.oc1.ap-singapore-1.aaaaaaaab2ljowfao3jj2psrqjtdjbzqonvxodaivx5345apram7ynpoho2a"
		source_type = "image"
	}
}
