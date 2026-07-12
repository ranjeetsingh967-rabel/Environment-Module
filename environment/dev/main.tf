module "rg" {
  source    = "../../module/resource_group"
  resources = var.resources
}

module "vnet" {
  depends_on = [module.rg]

  source  = "../../module/virtual_network"
  virtual = var.virtual
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../../module/subnet"
  subnet     = var.subnet
}