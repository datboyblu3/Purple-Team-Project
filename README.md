Follow along at ![Purple Team Project](https://medium.com/@DatBoyBlu3/purple-team-project-part-1-3f67c3f0e2f8) where I document my progress!

# Purple-Team-Project
A personal project of mine to practice and demonstrate offensive & defensive tactics, techniques and procedures in an effort to increase the skills in each area.
DigitalOcean is where this project is being hosted, all droplets are contained within a virtual private cloud. Below is a high level, logical depiction of the project:

- Terraform will be used to configure and deploy the overall infrastructure of the project
- Suricata will act as the gateway and will be in IPS/Inline mode
- All droplets will be built with DO's recommended linux os versions
- DigitalOcean's guides recommends Suricata to be installed on certain linux OS versions
- Suricata does not work well with Ubuntu 22.04, this is because a Suricata update is currently in beta for the latest version
- Ansible scripts will be used to create users, ssh files, transfer ssh keys and edit ssh as well as other configuration files

![Lab Diagram drawio](https://github.com/datboyblu3/Purple-Team-Project/blob/main/Images/Lab%20Diagram.drawio.png)

## Creating Droplets with DigitalOcean
1) In your project directory...
```JavaScript
terraform init
```
2) Execute terraform plan, below is an example of the output
```JavaScript
terraform plan
```

<img width="800" alt="Screenshot 2023-04-15 at 5 13 35 PM" src="https://user-images.githubusercontent.com/95729902/232253397-1b96e9c1-fa17-47f8-890f-1323bd20d06e.png">

3) Execute terraform apply to create droplets

<img width="613" alt="Screenshot 2023-04-15 at 5 18 06 PM" src="https://user-images.githubusercontent.com/95729902/232253522-e31e0f11-eb95-4165-bdbb-e08612fa83de.png">


## Resources

### Terraform
- [Terraform DigitalOcean Documentation](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs)
- [Tutorial Series: How To Manage Infrastructure with Terraform](https://www.digitalocean.com/community/tutorial_series/how-to-manage-infrastructure-with-terraform)
- [Infrastructure as Code With Terraform](https://www.youtube.com/watch?v=dSJ6zenfRK8&ab_channel=DigitalOcean)
- [Terraform With DigitalOcean for the Impatient](https://www.youtube.com/playlist?list=PL9evZl_m5wqsc7C38L9grx-djts2bqT_b)
- [8 Best Practices](https://www.youtube.com/watch?v=gxPykhPxRW0&ab_channel=TechWorldwithNana)

### Kibana
- [Elastic Security Fundamentals: SIEM](https://www.elastic.co/training/elastic-security-fundamentals-siem)
- [How To Series: Kibana](https://www.elastic.co/videos/training-how-to-series-stack)
- [Kibana Fundamentalss](https://www.elastic.co/training/kibana-fundamentals)
- [Kibana Query Language](https://www.elastic.co/guide/en/kibana/current/kuery-query.html)
- [Kibana: Loading Sample Data](https://www.elastic.co/guide/en/kibana/6.8/tutorial-load-dataset.html)

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
- [Changing Ansible Playbook Depending On Operating System](https://geektechstuff.com/2020/07/09/changing-ansible-playbook-depending-on-operating-system-ansible/)
- [Using Ansible To Create And Manage Users](https://geektechstuff.com/2019/11/03/using-ansible-to-create-and-manage-users-linux-raspberry-pi/)

### Suricata
- [How To Install Suricata on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-suricata-on-ubuntu-20-04) 
- [How To Configure Suricata as an Intrusion Prevention System (IPS) on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-configure-suricata-as-an-intrusion-prevention-system-ips-on-ubuntu-20-04)
- [Suricata 7.0.0 beta-1 packages are now available for Ubuntu on Ubuntu PPA](https://forum.suricata.io/t/suricata-7-0-0-beta-1-packages-are-now-available-for-ubuntu-on-ubuntu-ppa-launchpad/2921)
- [What to do When You See "Repository does not have a release file" Error in Ubuntu](https://itsfoss.com/repository-does-not-have-release-file-error-ubuntu/)
- [How to Deploy Your Application to Digital Ocean Using GitHub Actions And Save up on CI/CD Services Costs](https://medium.com/swlh/how-to-deploy-your-application-to-digital-ocean-using-github-actions-and-save-up-on-ci-cd-costs-74b7315facc2)

### Sigma Rules
- [A Deep Dive Into Sigma Rules And How To Write Your Own Threat Detection Rules](https://fourcore.io/blogs/sigma-rules-open-source-threat-hunting-approach)
- [How to Write Sigma Rules](https://www.nextron-systems.com/2018/02/10/write-sigma-rules/)


### Misc
- [How to Configure a Droplet as a VPC Gateway](https://docs.digitalocean.com/products/networking/vpc/how-to/configure-droplet-as-gateway/)
- [Tool Analysis Result Sheet](https://jpcertcc.github.io/ToolAnalysisResultSheet/#)
- [Online UUID Generator](https://www.uuidgenerator.net/)




