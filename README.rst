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

See ``defaults/main.yml`` for variables and their descriptions.

Dependencies
------------

TBD

Example Playbook
----------------

.. code-block:: yaml

    - hosts: servers
      roles:
         - { role: stevelle.openstack-ansible-gnocchi }

License
-------

Apache

Credits
-------

The ``config_template`` library module was developed by Kevin Carter for the
OpenStack Ansible and is vendored in ``library``.

The role layout and documentation was cribbed from the Openstack Searchlight
role by Ian Cordasco.

