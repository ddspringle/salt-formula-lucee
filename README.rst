==================
salt-formula-lucee
==================

A SaltStack formula to install Lucee (http://lucee.org).

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``lucee``
---------

Installs Lucee in unattended mode on Linux (see http://docs.lucee.org/guides/Various/installation-installer-documentation/installation-linux/installing-in-unattended-mode.html for documentation).


Pillar data
===========

.. contents::
	:local:

``lucee_version``
-----------------

The version of Lucee you wish to install (see: http://download.lucee.org/). Ex: 5.2.5.020

``installer_version``
---------------------

The version of the installer to use. This is typically 'pl0', but occasionally may be updated (pl1, pl2, etc.)

``cpu_arch``
------------

The processor archtecture you are running, either x86 (32 bit) or x64 (64 bit)

``password``
------------

The password to use for logging into the Lucee admin after install. This password must be 6 or more characters.

``run_as_user``
---------------

The user on the server that Lucee should run under. If this user account doesn't exist, a user and group account will be made using this name. Ex: lucee

``install_dir``
---------------

The directory where Lucee should be installed: Ex: /opt/lucee

``tomcat_port``
---------------

The port that Tomcat should run on. Ex: 8888

``tomcat_shutdown_port``
------------------------

The port that Tomcat should listen to for shutdown requests. Ex: 8005

``tomcat_ajp_port``
-------------------

The port that Tomcat listens to AJP requests on. Ex: 8009

``start_at_boot``
-----------------

Enter true to start Lucee when the server boots, otherwise enter false.

``install_apache_connector``
----------------------------

Enter true to install mod_cfml and connect Lucee to the Apache web server, otherwise enter false.

``apache_control_loc``
----------------------

The location of your apachectl script. Ex: /usr/sbin/apachectl

``apache_modules_loc``
----------------------

The location of your apache modules. Leave blank for default location based on OS and architecture.

``apache_config_loc``
---------------------

The location of your apache config files. Leave blank for default location based on OS and architecture.

``apache_log_loc``
------------------

The location of your apache log files. Leave blank for default location based on OS and architecture.


Bugs and Feature Requests
=========================

If you find any bugs or have a feature you'd like to see implemented in this code, please use the issues area here on GitHub to log them.

Contributing
============

This project is actively being maintained and monitored by Denard Springle. If you would like to contribute to this formula please feel free to fork, modify and send a pull request!

License
=======

The use and distribution terms for this formula are covered by the Apache Software License 2.0 (http://www.apache.org/licenses/LICENSE-2.0).