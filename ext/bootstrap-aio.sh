#!/usr/bin/env bash
apt-get update
apt-get install -y git vim tmux fail2ban
cd /opt

# add the bits for pulling down the rcbops team's keys

git clone https://github.com/openstack/openstack-ansible.git
cd openstack-ansible

cp ansible-role-requirements.yml ansible-role-requirements.yml.orig
grep -v "^$" ansible-role-requirements.yml.orig > ansible-role-requirements.yml
cat >> ansible-role-requirements.yml <<EOF
- name: os_gnocchi
  src: https://github.com/stevelle/openstack-ansible-gnocchi
  scm: git
  version: master
EOF

./scripts/bootstrap-ansible.sh
./scripts/bootstrap-aio.sh

cp /etc/ansible/roles/os_gnocchi/ext/playbooks/os-gnocchi-install.yml  playbooks/
cp -R /etc/ansible/roles/os_gnocchi/ext/openstack_deploy/* /etc/openstack_deploy/
cp /etc/ansible/roles/os_gnocchi/ext/repo_packages/openstack_gnocchi.yml playbooks/defaults/repo_packages/
cat /etc/ansible/roles/os_gnocchi/ext/haproxy/service.yml.fragment >> playbooks/vars/configs/haproxy_config.yml
mv /etc/openstack_deploy/conf.d/gnocchi.yml.aio /etc/openstack_deploy/conf.d/gnocchi.yml
./scripts/pw-token-gen.py --file /etc/openstack_deploy/user_gnocchi_secrets.yml

