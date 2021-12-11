# Defining VM Volume
resource "libvirt_volume" "centos7-qcow2" {
  name   = "centos7.qcow2"
  pool   = "default" # List storage pools using virsh pool-list
  source = "https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud.qcow2"
  #source = "./CentOS-7-x86_64-GenericCloud.qcow2"
  format = "qcow2"
}

data "template_file" "user_data" {
  template = file("${path.module}/config/cloud_init.yml")
}

resource "libvirt_cloudinit_disk" "cloudinit" {
  name      = "cloudinit.iso"
  user_data = data.template_file.user_data.rendered
  #network_config = data.template_file.network_config.rendered
  pool = "default"
}

# Define KVM domain to create
resource "libvirt_domain" "centos7" {
  name   = "centos7"
  memory = "2048"
  vcpu   = 2

  cloudinit = libvirt_cloudinit_disk.cloudinit.id

  network_interface {
    network_name   = "default" # List networks with virsh net-list
    wait_for_lease = "true"
  }

  disk {
    volume_id = libvirt_volume.centos7-qcow2.id
  }

  console {
    type        = "pty"
    target_type = "serial"
    target_port = "0"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}

# Output Server IP
#output "ip" {
#  value = "${libvirt_domain.centos7.network_interface.0.addresses.0}"
#}