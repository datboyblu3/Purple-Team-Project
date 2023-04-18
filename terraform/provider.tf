variable "do_token" {}

provider "digitalocean" { 
  token = var.do_token
}

variable "pub_key" {}
