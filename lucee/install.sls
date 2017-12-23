# -*- coding: utf-8 -*-
# vim: ft=sls

## get the lucee pillar data ##
{% set lucee = salt['pillar.get']( 'lucee', {} ) %}

## ensure we have pillar data to work with ##
{% if 'version' in lucee %}

download-lucee-installer:
  cmd.run:
    - name: curl -o /root/lucee-installer.bin https://cdn.lucee.org/lucee-{{lucee.version}}-{{lucee.installer_version}}-linux{% if lucee.cpu_arch == 'x64' %}-x64{% endif %}-installer.bin

set-installer-executeable:
  file.managed:
    - name: /root/lucee-installer.bin
    - mode: 755

install-option-file:
  file.managed:
    - name: /root/lucee-options
    - source: salt://lucee/config/lucee-options
    - template: jinja
    - mode: 644

run-lucee-installer-with-options:
  cmd.run:
    - name: /root/lucee-installer.bin --mode unattended --optionfile=/root/lucee-options

clean-up-installer:
  file.absent:
    - name: /root/lucee-installer.bin

clean-up-options-file:
  file.absent:
    - name: /root/lucee-options

{% else %} 

test.fail_without_changes:
     - msg: "Lucee pillar data was not found but is required."
     - failhard: True

{% endif %}
