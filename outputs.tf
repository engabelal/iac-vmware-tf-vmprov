output "vm_names" {
  description = "Names of the provisioned virtual machines"
  value       = module.vm.vm_names
}

output "vm_ids" {
  description = "Managed object IDs for the created virtual machines"
  value       = module.vm.vm_ids
}

output "vm_ips" {
  description = "Default IP addresses as reported by VMware Tools"
  value       = module.vm.vm_ips
}
