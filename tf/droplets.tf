data "digitalocean_project" "purple_team_project" {
  name = "Purple Team Project"
}

# Get SSH key
resource "digitalocean_ssh_key" "project" {
  name       = "terraform"
  public_key = file("/Put/Your/SSH/Public Key Here")
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


#Create Client Droplet
resource "digitalocean_droplet" "client1" {
    count                     = 3
    image                     = "ubuntu-20-04-x64"
    name                      = "web.${count.index}"
    region                    = "nyc3"
    size                      = "s-1vcpu-1gb"
    monitoring                = true
    #private_networking       = true
    ssh_keys                  = [digitalocean_ssh_key.project.id]

# Add lines for Ansible execution
provisioner "remote-exec"{
    inline = ["sudo apt update", "sudo apt install python3 -y", "echo Done!"]

    connection {
      host          = self.ipv4_address
      type          = "ssh"
      user          = "root"
      private_key   = file(var.pvt_key)
    }
}

provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u root -i '${self.ipv4_address},' --private-key ${var.pvt_key} -e 'pub_key=${var.pub_key}' create_user.yml"
  }
}

output "droplet_ip_addresses" {
  value = {
    for droplet in digitalocean_droplet.web:
    droplet.name => droplet.ipv4_address
  sensitive = true 
  }
}
