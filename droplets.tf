data "digitalocean_project" "purple_team_project" {
  name = "Purple Team Project"
}

# Get SSH key
resource "digitalocean_ssh_key" "project" {
  name       = "terraform"
  public_key = file("/Users/dan/.ssh/id_rsa.pub")
}

#Create Splunk Droplet
resource "digitalocean_droplet" "splunk" {
    image                     = "ubuntu-20-04-x64"
    name                      = "splunk"
    region                    = "nyc3"
    size                      = "s-1vcpu-1gb"
    monitoring                = true
    #private_networking       = true
    ssh_keys                  = [digitalocean_ssh_key.project.id]
}

#Create Ansible Control Node
resource "digitalocean_droplet" "ansible" {
    image                     = "ubuntu-20-04-x64"
    name                      = "ansible"
    region                    = "nyc3"
    size                      = "s-1vcpu-1gb"
    monitoring                = true
    #private_networking       = true
    ssh_keys                  = [digitalocean_ssh_key.project.id]
}


#Create Suricata Droplet
resource "digitalocean_droplet" "suricata" {
    image                     = "ubuntu-20-04-x64"
    name                      = "suricata"
    region                    = "nyc3"
    size                      = "s-1vcpu-1gb"
    monitoring                = true
    #private_networking       = true
    ssh_keys                  = [digitalocean_ssh_key.project.id]
}


#Create Client1 Droplet
resource "digitalocean_droplet" "client1" {
    image                     = "ubuntu-20-04-x64"
    name                      = "client1"
    region                    = "nyc3"
    size                      = "s-1vcpu-1gb"
    monitoring                = true
    #private_networking       = true
    ssh_keys                  = [digitalocean_ssh_key.project.id]
}

#Create Client2 Droplet
resource "digitalocean_droplet" "client2" {
    image                     = "ubuntu-20-04-x64"
    name                      = "client2"
    region                    = "nyc3"
    size                      = "s-1vcpu-1gb"
    monitoring                = true
    #private_networking       = true
    ssh_keys                  = [digitalocean_ssh_key.project.id]
}

#Create Client3 Droplet
resource "digitalocean_droplet" "client3" {
    image                     = "ubuntu-20-04-x64"
    name                      = "client3"
    region                    = "nyc3"
    size                      = "s-1vcpu-1gb"
    monitoring                = true
    #private_networking       = true
    ssh_keys                  = [digitalocean_ssh_key.project.id]
}
output "server_ip" {
  value = digitalocean_droplet.splunk.ipv4_address
}