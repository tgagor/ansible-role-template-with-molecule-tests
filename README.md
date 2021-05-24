Ansible role for XXX
========================

This role will install XXX on compatible platforms.

[![Molecule Test](https://github.com/tgagor/ansible-role-XXX/actions/workflows/test-and-release.yml/badge.svg)](https://github.com/tgagor/ansible-role-XXX/actions/workflows/test-and-release.yml)
[![Ansible Galaxy](https://img.shields.io/badge/ansible--galaxy-tgagor-XXX.svg)](https://galaxy.ansible.com/tgagor/XXX)

## Supported systems

* Ubuntu
  * 18.04
  * 20.04
  * 20.10
  * 21.04
* Linux Mint
  * 19.3
  * 20
  * 20.1
* Debian
  * 9 (stretch)
  * 10 (buster)
  * 11 (bullseye)
* CentOS
  * 7
  * 8XXX
* Fedora
  * 32
  * 33
  * 34

## Requirements

As XXX's repo is available via HTTPS, role will install `apt-transport-https` if it's not present in the system.

## Role variables

Role doesn't require any custom variables.

## Dependencies

There are no dependencies on other roles.

## Example playbook

Just add to you playbook, to install it on `localhost`:

```yaml
- hosts: localhost
  connection: local
  gather_facts: true
  become: yes
  tasks:
    - name: Install XXX
      include_role:
        name: tgagor.XXX
```

## License
-------

See [LICENSE](LICENSE)
