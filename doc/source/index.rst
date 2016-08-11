=================
Table of Contents
=================

.. toctree::
   :maxdepth: 2

   overview.rst

Default variables
~~~~~~~~~~~~~~~~~

.. literalinclude:: ../../defaults/main.yml
   :language: yaml
   :start-after: under the License.

Example playbook
~~~~~~~~~~~~~~~~

.. literalinclude:: ../../examples/playbook.yml
   :language: yaml

Tags
~~~~

This role supports two tags: ``gnocchi-install`` and
``gnocchi-config``. The ``gnocchi-install`` tag can be used to install
and upgrade. The ``gnocchi-config`` tag can be used to maintain the
configuration of the service.
