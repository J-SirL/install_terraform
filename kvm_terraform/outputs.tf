# Output Server IP
output "ip" {
  value = libvirt_domain.centos7.network_interface.0.addresses.0
}

output "url" {
  value = "http://${libvirt_domain.centos7.network_interface.0.addresses.0}"
}