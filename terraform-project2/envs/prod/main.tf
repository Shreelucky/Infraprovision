module "vm" {
  source         = "../../modules/vm"
  env            = "prod"
  location       = var.location
  vm_size        = var.vm_size
  admin_username = var.admin_username
  ssh_public_key = var.ssh_public_key
}
