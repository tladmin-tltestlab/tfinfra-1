variable "enable_compute_lab" {
  description = "Toggle to enable/disable the compute lab resources"
  type        = bool
  default     = false
}
variable "instance_name" {}
variable "instance_zone" {}
variable "instance_type" {
  default = "e2-micro"
  }
variable "instance_network" {}