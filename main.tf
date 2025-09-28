module "vm" {
  source = "./modules/vm"

  datacenter = var.datacenter
  cluster    = var.cluster
  datastore  = var.datastore
  cpu        = var.cpu
  memory     = var.memory
  vm_list    = var.vm_list

  template_name              = var.template_name
  network_name               = var.network_name
  wait_for_guest_net_timeout = var.wait_for_guest_net_timeout
  customization_spec_name    = var.customization_spec_name
}
