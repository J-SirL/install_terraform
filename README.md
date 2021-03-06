<!--
repo name: install_terraform
description: install_terraform project is a Terraform installer that installs latest Terraform using Ansible
This project started because I needed a fast way to check for new terraform versions, and got annoyed by all manual installation howTo's
so I decided to put it up for others to use.
It's very simple just clone the repo and run ansible-playbook install_or_update_terraform.yml and you have terraform on your system. 
github name:  install_terraform
link: https://github.com/J-SirL/install_terraform
email: sorell.johan@gmail.com
-->
<!-- PROJECT SHIELDS -->
[![GitHub contributors](https://img.shields.io/github/contributors/J-SirL/install_terraform?logo=contributors&style=for-the-badge)](https://github.com/J-SirL/install_terraform/graphs/contributors)
[![GitHub issues](https://img.shields.io/github/issues/J-SirL/install_terraform?logo=issues&style=for-the-badge)](https://github.com/J-SirL/install_terraform/issues)
[![GitHub forks](https://img.shields.io/github/forks/J-SirL/install_terraform?logo=forks&style=for-the-badge)](https://github.com/J-SirL/install_terraform/network)
[![GitHub stars](https://img.shields.io/github/stars/J-SirL/install_terraform?logo=stars&style=for-the-badge)](https://github.com/J-SirL/install_terraform/stargazers)
# install\_terraform

<!-- ABOUT THE PROJECT -->
## About The Project
install_terraform project is a Terraform installer that installs latest Terraform using Ansible
This project started because I needed a fast way to check for new terraform versions, and got annoyed by all manual installation howTo's
so I decided to put it up for others to use.
It's very simple just clone the repository and run ```ansible-playbook install_or_update_terraform.yml``` and you have terraform on your system. 

It works with most Linux distributions

**AlmaLinux / Rocky Linux / Ubuntu / Debian / CentOS / Fedora / Arch Linux system etc.**

<!-- GETTING STARTED -->
## Getting Started

1. **Clone project**
    ```git clone https://github.com/J-SirL/install_terraform.git```
2. **Change to project folder**
    ```cd install_terraform/PlayBooks```
4. **Either create a [terraform] group in the inventory or change hosts to all in playbook**
    ```yaml
   [terraform]
   terraformclient.example.com # or use the ip address of the system where you want to install terraform
   ```
4. **Run it with ansible-playbook**
 ```ansible-playbook install_or_update_terraform.yml```
 <br>**Alternatively run it with a speciffic inventory file**
    ```ansible-playbook -i inventory install_or_update_terraform.yml```

## About terraform
> Terraform is an infrastructure as code (IaC) tool that allows you to build, change, and version infrastructure safely and efficiently. This includes low-level components such as compute instances, storage, and networking, as well as high-level components such as DNS entries, SaaS features, etc. Terraform can manage both existing service providers and custom in-house solutions.
> 
> Key Features of Terraform
> Infrastructure as Code
> You describe your infrastructure using Terraform's high-level configuration language in human-readable, declarative configuration files. This allows you to create a blueprint that you can version, share, and reuse.
> 
> Execution Plans
> Terraform generates an execution plan describing what it will do and asks for your approval before making any infrastructure changes. This allows you to review changes before Terraform creates, updates, or destroys infrastructure.
> 
> Resource Graph
> Terraform builds a resource graph and creates or modifies non-dependent resources in parallel. This allows Terraform to build resources as efficiently as possible and gives you greater insight into your infrastructure.
> 
> Change Automation
> Terraform can apply complex changesets to your infrastructure with minimal human interaction. When you update configuration files, Terraform determines what changed and creates incremental execution plans that respect dependencies.

<!-- CONTACT -->
## Contact

Johan S??rell  - sorell.johan@gmail.com

Project Link: https://github.com/J-SirL/install_terraform
