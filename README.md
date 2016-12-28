## Settings

### laptop
Playbook to setup my desktop environment.

```bash
$ ansible-playbook -i inventory settings.yml
```

### server
Roles to setup my personal server.
```bash
$ ansible-playbook -i inventory server.yml
```

#### roles
- gentoo_nginx

- gentoo_uwsgi

- blog
