# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import OVIRT with context %}

ovirt-repo-present:
  pkg.installed:
    - sources:
      - {{ OVIRT.ovirt_repo.name }}: {{ OVIRT.ovirt_repo.package }}
