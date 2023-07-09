# Auto dotfiles

This repository contains ansible playbook and roles that install my personal arch linux setup.
If you wish to use this repository, add your own hosts to the `inventory` directory.
The playbook uses a role that creates an user, it needs the following extra variables:

* `host_user`
* `host_group`
* `host_passwd`

The playbook can be ran using the following command:

```
ansible-playbook -i inventoy -u root main.yml
```
