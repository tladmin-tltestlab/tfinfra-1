resource "google_compute_instance" "vm_instance" {
  count = var.enable_compute_lab ? 2 : 0
  name         = "${var.instance_name}${count.index}"
  zone         = "${var.instance_zone}"
  machine_type = "${var.instance_type}"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      }
  }
  network_interface {
    network = "${var.instance_network}"
    # access_config {
      # Uncomment access_config block to allocate an external emphermal IP to the instance
    # }
  }
}