OpenStack-Ansible Gnocchi
#########################

Ansible role which installs and configures OpenStack Gnocchi. Gnocchi installs
behind an Apache webserver listening for HTTP connections on port 8041 and
writes to filesystem storage by default.

The role can readily be configured to use Swift or Ceph storage as desired and
may be used as a stand-alone service integrated with Keystone for auth or with
Ceilometer as a metrics source.

Default Variables
=================

.. literalinclude:: ../../defaults/main.yml
   :language: yaml
   :start-after: under the License.

Required Variables
==================

This list is not considered exhaustive at present. See role internals for
further details.

.. code-block:: yaml

    gnocchi_galera_password: "secrete"
    galera_address: 10.100.100.2

    # Keystone credentials
    keystone_admin_tenant_name: admin
    keystone_admin_user_name: admin
    keystone_auth_admin_password: "SuperSecretePassword"
    keystone_service_adminuri_insecure: false
    keystone_service_adminurl: "https://10.100.100.10:35357/v3"
    keystone_service_internalurl: "https://10.100.100.10:5000/v3"

    # Keystone password for the gnocchi service user
    gnocchi_service_password: "secrete"

    # hostname or IP of load balancer providing external network
    # access to Keystone
    external_lb_vip_address: 10.100.100.102

    # hostname or IP of load balancer providing internal network
    # access to Keystone
    internal_lb_vip_address: 10.100.100.102

Example Playbook
================

..  code-block:: yaml

    - name: Installation and setup of Keystone
      hosts: keystone_all
      user: root
      roles:
        - { role: "os_keystone", tags: [ "os-keystone" ] }
      vars:

Tags
====

This role supports two tags: ``gnocchi-install`` and ``gnocchi-config``

The ``gnocchi-install`` tag can be used to install and upgrade.

The ``gnocchi-config`` tag can be used to maintain configuration of the
service.