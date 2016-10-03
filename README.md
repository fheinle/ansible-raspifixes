# ansible-raspifixes
Some settings to make the SD card in your RaspberryPi last longer

## Description
This playbook tries to reduce write cycles to your SD card and make it live a little longer this way.

**Caution**: It also mounts ``/var/log/`` as ``tmpfs``. If you intend to keep your logfiles when rebooting, you should use remote logging with ``syslog``.

## Build

[![Build Status](https://travis-ci.org/fheinle/ansible-raspifixes.svg?branch=master)](https://travis-ci.org/fheinle/ansible-raspifixes)

## Copyright
Copyright (C) 2016 Florian Heinle <launchpad@planet-tiax.de>

MIT License
