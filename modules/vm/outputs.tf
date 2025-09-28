locals {
  ordered_names = var.vm_list
}

output "vm_names" {
  description = "Names of the provisioned virtual machines"
  value       = [for name in local.ordered_names : vsphere_virtual_machine.vm[name].name]
}

output "vm_ids" {
  description = "Managed object IDs for the created virtual machines"
  value       = [for name in local.ordered_names : vsphere_virtual_machine.vm[name].id]
}

output "vm_ips" {
  description = "Default IP addresses as reported by VMware Tools"
  value       = [for name in local.ordered_names : try(vsphere_virtual_machine.vm[name].default_ip_address, null)]
}
