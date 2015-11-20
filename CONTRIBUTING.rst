OpenStack Gnocchi 
=====================

Contributor Code of Conduct
---------------------------

As contributors and maintainers of this project, we pledge to respect all 
people who contribute through reporting issues, posting feature requests, 
updating documentation, submitting pull requests or patches, and other 
activities.

We are committed to making participation in this project a harassment-free 
experience for everyone, regardless of level of experience, gender, gender 
identity and expression, sexual orientation, disability, personal appearance, 
body size, race, ethnicity, age, or religion.

Examples of unacceptable behavior by participants include the use of sexual 
language or imagery, derogatory comments or personal attacks, trolling, public 
or private harassment, insults, or other unprofessional conduct.

Project maintainers have the right and responsibility to remove, edit, or 
reject comments, commits, code, wiki edits, issues, and other contributions 
that are not aligned to this Code of Conduct. Project maintainers who do not 
follow the Code of Conduct may be removed from the project team.

Instances of abusive, harassing, or otherwise unacceptable behavior may be 
reported by opening an issue or contacting one or more of the project 
maintainers.

This Code of Conduct is adapted from the `Contributor Covenant`_, version 
1.0.0, available at http://contributor-covenant.org/version/1/0/0/

.. _Contributor Covenant: http://contributor-covenant.org

..
    Re-formatted to reStructuredText from
    https://raw.githubusercontent.com/CoralineAda/contributor_covenant/master/CODE_OF_CONDUCT.md

Contributor Guidelines
----------------------

Filing Bugs
~~~~~~~~~~~

Bugs should be filed on the `GitHub project page 
<https://github.com/stevelle/openstack-ansible-gnocchi/issues>`_.

When submitting a bug, or working on a bug, please ensure the following criteria are met:

* The description clearly states or describes the original problem or root 
  cause of the problem.
* Include historical information on how the problem was identified.
* Any relevant logs are included.
* The provided information should be totally self-contained. External access 
  to web services/sites should not be needed.
* Steps to reproduce the problem if possible.


Submitting Code
~~~~~~~~~~~~~~~

Changes to this project should be sent via `pull request 
<https://github.com/stevelle/openstack-ansible-gnocchi/pulls>`_ on 
GitHub.


Style guide
~~~~~~~~~~~

When creating tasks and other roles for use in Ansible please create then 
using the YAML dictionary format. 

Example YAML dictionary format:

.. code-block:: yaml

    - name: The name of the tasks
      module_name:
        thing1: "some-stuff"
        thing2: "some-other-stuff"
      tags:
        - some-tag
        - some-other-tag


Example **not** in YAML dictionary format:

.. code-block:: yaml

    - name: The name of the tasks
      module_name: thing1="some-stuff" thing2="some-other-stuff"
      tags:
        - some-tag
        - some-other-tag


Usage of the ">" and "|" operators should be limited to Ansible conditionals 
and command modules such as the ansible ``shell`` module.


Issues
~~~~~~

When submitting an issue, or working on an issue please ensure the following 
criteria are met:

* The description clearly states or describes the original problem or root 
  cause of the problem.
* Include historical information on how the problem was identified.
* Any relevant logs are included.
* If the issue is a bug that needs fixing in a branch other than Master, add 
  the ‘backport potential’ tag TO THE ISSUE (not the PR).
* The provided information should be totally self-contained. External access 
  to web services/sites should not be needed.
* If the issue is needed for a hotfix release, add the 'expedite' label.
* Steps to reproduce the problem if possible.

