========================
Team and repository tags
========================

.. image:: http://governance.openstack.org/badges/openstack-ansible-os_gnocchi.svg
    :target: http://governance.openstack.org/reference/tags/index.html

.. Change things from this point on

=========================
OpenStack-Ansible Gnocchi
=========================

Ansible role which installs and configures OpenStack Gnocchi. Gnocchi installs
behind an Apache webserver listening for HTTP connections on port 8041 and
writes to filesystem storage by default.

The role can readily be configured to use Swift or Ceph storage as desired and
may be used as a stand-alone service integrated with Keystone for auth or with
Ceilometer as a metrics source.
