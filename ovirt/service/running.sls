# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import OVIRT with context %}

cockpit.socket:
  service.running:
    - enable: true
    - reload: true
