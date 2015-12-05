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

- keystone_auth_admin_token
- keystone_service_internaluri
- keystone_service_internaluri_insecure
- keystone_service_adminruri
- keystone_service_adminruri_insecure
- galera_address
- galera_root_user
- galera_root_password
- internal_lb_vip_address
- external_lb_vip_address

The ``keystone_auth_admin_token`` should contain the Keystone admin auth
token which can be used to bypass traditional Keystone auth and is used to
create service users/roles/endpoints as needed within Keystone.

Each of the ``keystone_service_*uri`` variables is expected to include
protocol, host, and port for the keystone service. Do not specify a path, to
include keystone protocol version. See also the OpenStack Ansible project and
the os_keystone role for more details on these variables.

Each ``keystone_*_insecure`` variable is expected to indicate whether or not
Keystone is using the http protocol or not, and should evaluate to a boolean.

The ``galera_address`` is expected to direct to the your MySQL server or a load
balancer host which sits in front of your Galera cluster. This may be See also
the OpenStack Ansible project for more details. The ``galera_root_*`` variables
should contain the credentials used to create the Gnocchi index database.

Each of the ``*_lb_vip_address`` variables is expected to contain the host
address for your Gnocchi service, either internal address for use within the
OpenStack cluster's local network or external for constructing the public
Gnocchi API service endpoint. Either one might point to your load-balancer.
Note that both of these variables are likely to be renamed.

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

