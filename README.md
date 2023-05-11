# RHV Lab Ansible

**2023-05-11 Update: I'm archiving this repo because I stopped dual-booting my lab server with RHEL/Windows. I went to the dark side: running VMs on Windows 10 with Hyper-V. 😈**

Ansible playbooks to bring up and shut down my Red Hat Virtualization lab
environment cleanly.

## How to Use

To start the lab environment:

```bash
$ make up
```

To stop the lab environment:

```bash
$ make down
```
