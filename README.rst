OpenStack Ansible Gnocchi
=========================

A simple role to deploy OpenStack Gnocchi from source in a manner similar
to the OpenStack Ansible project.

Requirements
------------

Storage
^^^^^^^
You will need to have an appropriate set of data stores.
This needs to be detailed separately in documentation to be written.

Secrets
^^^^^^^
The secrets file (which should be copied to ``/etc/openstack_deploy`` in your
deploy but originating from ``ext/openstack_deploy/user_gnocchi_secrets.yml``)
needs to have values specified. This can be done by invoking the generator
found in the openstack-ansible project: ``scripts/pw-token-gen.py``

Role Variables
--------------

Other variables expected for this role include:

- keystone_service_publicuri
- keystone_service_adminruri
- galera_address

Each of the keystone service uri variables is expected to include protocol,
host, and port for the keystone service. Do not specify a path, to include
keystone protocol version. See also the OpenStack Ansible project and the
os_keystone role for more details on these variables.

The galera address is expected to direct to the internal_lb_vip_address. See
also the OpenStack Ansible project for more details.

See ``defaults/main.yml`` for additional variables and their descriptions.

Dependencies
------------

TBD

Example Playbook
----------------

.. code-block:: yaml

    - hosts: gnocchi_all
      roles:
        role: stevelle.openstack-ansible-gnocchi
        galera_address: "{{ internal_lb_vip_address }}"
        tags:
          - "os-gnocchi"

License
-------

Apache

Credits
-------

The ``config_template`` library module was developed by Kevin Carter for the
OpenStack Ansible and is vendored in ``library``.

The role layout and documentation was cribbed from the Openstack Searchlight
role by Ian Cordasco.

