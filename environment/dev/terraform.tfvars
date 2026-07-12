resources = {
  rg1 = {
    name     = "dev_rg1"
    location = "eastus"
  }
}
virtual = {
  vnet1 = {
    name                = "dev_vnet1"
    location            = "eastus"
    resource_group_name = "dev_rg1"
    address_space       = ["10.0.0.0/16"]
  }
  vnet2 = {
    name                = "dev_vnet2"
    location            = "eastus"
    resource_group_name = "dev_rg1"
    address_space       = ["10.1.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "dev_subnet1"
    resource_group_name  = "dev_rg1"
    virtual_network_name = "dev_vnet1"
    address_prefixes     = ["10.0.0.0/24"]
  }
  subnet2 = {
    name                 = "dev_subnet2"
    resource_group_name  = "dev_rg1"
    virtual_network_name = "dev_vnet2"
    address_prefixes     = ["10.1.0.0/24"]
  }
}