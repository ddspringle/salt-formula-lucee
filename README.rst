==================
salt-formula-lucee
==================

A saltstack formula to install Lucee (http://lucee.org).

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

Enter the version of Lucee you wish to install (see: http://download.lucee.org/). Ex: 5.2.5.020

``installer_version``
---------------------

Enter the version of the installer to use. This is typically 'pl0', but occasionally may be updated (pl1, pl2, etc.)

``cpu_arch``
------------

Enter the processor archtecture you are running, either x86 (32 bit) or x64 (64 bit)

``password``
------------

Enter the password to use for logging into the Lucee admin after install.

``run_as_user``
---------------

Enter the user on the server that Lucee should run under. Ex: lucee

``install_dir``
---------------

Enter the directory where Lucee should be installed: Ex: /opt/lucee

``tomcat_port``
---------------

Enter the port that Tomcat should run on. Ex: 8888

``tomcat_shutdown_port``
------------------------

Enter the port that Tomcat should listen to for shutdown requests. Ex: 8005

``tomcat_ajp_port``
-------------------

Enter the port that Tomcat listens to AJP requests on. Ex: 8009

``start_at_boot``
-----------------

Enter true to start Lucee when the server boots, otherwise enter false.

``install_apache_connector``
----------------------------

Enter true to install mod_cfml and connect Lucee to the Apache web server, otherwise enter false.

``apache_control_loc``
----------------------

Enter the location of your apachectl script. Ex: /usr/sbin/apachectl

``apache_modules_loc``
----------------------

Enter the location of your apache modules. Leave blank for default location based on OS and architecture.

``apache_config_loc``
---------------------

Enter the location of your apache config files. Leave blank for default location based on OS and architecture.

``apache_log_loc``
------------------

Enter the location of your apache log files. Leave blank for default location based on OS and architecture.


Bugs and Feature Requests
=========================

If you find any bugs or have a feature you'd like to see implemented in this code, please use the issues area here on GitHub to log them.

Contributing
============

This project is actively being maintained and monitored by Denard Springle. If you would like to contribute to this formula please feel free to fork, modify and send a pull request!

License
=======

The use and distribution terms for this formula are covered by the Apache Software License 2.0 (http://www.apache.org/licenses/LICENSE-2.0).