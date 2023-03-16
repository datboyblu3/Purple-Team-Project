# Purple-Team-Project
A personal project of mine to practice and demonstrate offensive & defensive tactics, techniques and procedures in an effort to increase the skills in each area.
DigitalOcean is where this project is being hosted, all droplets are contained within a virtual private cloud. Below is a high level, logical depiction of the project:

- Suricata will act as the gateway and will be in IPS/Inline mode
- All droplets will be built with DO's recommended linux os versions
- DigitalOcean's guides recommends Suricata to be installed on certain linux OS versions
- Suricata does not work well with Ubuntu 22.04, this is because a Suricata update is currently in beta for the latest version

![Lab Diagram drawio](https://github.com/datboyblu3/Purple-Team-Project/blob/main/Images/Lab%20Diagram.drawio.png)



## Resources

### Ansible
- [How to Use Ansible: A Reference Guide](https://www.digitalocean.com/community/cheatsheets/how-to-use-ansible-cheat-sheet-guide)

- [How To Manage Multiple Servers with Ansible Ad Hoc Commands](https://www.digitalocean.com/community/cheatsheets/how-to-manage-multiple-servers-with-ansible-ad-hoc-commands)

- [How To Write Ansible Playbooks](https://www.digitalocean.com/community/tutorial_series/how-to-write-ansible-playbooks)

- [How to create a Linux User Using Ansible](https://citizix.com/how-to-create-a-linux-user-using-ansible/)

- [Ansible apt module Examples - install packages with apt | Devops Junction](https://www.middlewareinventory.com/blog/ansible-apt-examples/)

- [Hardening SSH with Ansible](https://tizutech.com/hardening-ssh-with-ansible/)

- [How to install Splunk Forwarder on Ubuntu](https://bobcares.com/blog/install-splunk-forwarder-on-ubuntu/)

- [Splunk forwarder installation using Ansible](https://www.linuxsysadmins.com/splunk-forwarder-installation-using-ansible/)

- [Conditionals](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_conditionals.html#ansible-facts-distribution)




