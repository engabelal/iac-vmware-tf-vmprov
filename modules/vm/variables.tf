variable "datacenter" {
  description = "Target vSphere datacenter name"
  type        = string
}

variable "cluster" {
  description = "Target vSphere cluster name"
  type        = string
}

variable "datastore" {
  description = "Datastore used to place the VMs"
  type        = string
}

variable "cpu" {
  description = "vCPU count assigned to each VM"
  type        = number
}

variable "memory" {
  description = "Memory (in MB) assigned to each VM"
  type        = number
}

variable "vm_list" {
  description = "List of VM hostnames to deploy"
  type        = list(string)
}

variable "template_name" {
  description = "Name of the source VM template"
  type        = string
  default     = "rhel-9.4-template"
}

variable "network_name" {
  description = "Network (portgroup) to attach the VMs to"
  type        = string
  default     = "mf-network-vlan201"
}

variable "wait_for_guest_net_timeout" {
  description = "Seconds to wait for guest networking (0 to skip waiting)"
  type        = number
  default     = 0
}

variable "customization_spec_name" {
  description = "Optional vSphere customization spec name to apply during clone"
  type        = string
  default     = null
}
