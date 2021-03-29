# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import OVIRT with context %}

include:
  - .repo

cockpit-packages-present:
  pkg.installed:
    - pkgs: {{ OVIRT.cockpit_packages }}
