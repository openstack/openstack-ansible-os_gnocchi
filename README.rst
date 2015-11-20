OpenStack Ansible Gnocchi
=========================

A simple role to deploy OpenStack Gnocchi from source in a manner similar
to the OpenStack Ansible project.

Requirements
------------

None.

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

