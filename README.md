# ansible-raspifixes
Some settings to make the SD card in your RaspberryPi last longer

## Description
This playbook tries to reduce write cycles to your SD card and make it live a little longer this way.

**Caution**: It also mounts ``/var/log/`` as ``tmpfs``. If you intend to keep your logfiles when rebooting, you should use remote logging with ``syslog``.
