Ansible role for XXX
========================

This role will install XXX on compatible platforms.

[![Molecule Test](https://github.com/tgagor/ansible-role-XXX/actions/workflows/test-and-release.yml/badge.svg)](https://github.com/tgagor/ansible-role-XXX/actions/workflows/test-and-release.yml)
![Ansible Role](https://img.shields.io/ansible/role/54867)
![Ansible Quality Score](https://img.shields.io/ansible/quality/54867?label=galaxy%20quality%20score)
![Ansible Role](https://img.shields.io/ansible/role/d/54867)

Use command below to get role id:

```bash
ansible-galaxy info tgagor.spotify | grep -E 'id: [0-9]' | awk {'print $2'}
```

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
