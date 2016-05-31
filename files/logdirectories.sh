#!/bin/bash
### BEGIN INIT INFO
# Provides:          prepare-dirs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Required-Start:  
# Required-Stop:   
# Short-Description: Create /var/log/ directory on tmpfs at startup
# Description:       Create /var/log/ directory on tmpfs at startup
### END INIT INFO

case "${1:-''}" in
  start)
      for DIRECTORY in fsck ntpstats apt samba/cores
      do
          mkdir -p /var/log/$DIRECTORY
      done
      chmod 755 /var/log/{fsck,apt,ntpstats}
      chmod 750 /var/log/samba
      chmod 700 /var/log/samba/cores
      chown ntp:ntp /var/log/ntpstats
      chown root:adm /var/log/samba
      ;;
  stop)
      ;;
  restart)
      ;;
  reload|force-reload)
      ;;
  status)
      ;;
  *)
      echo "Usage: $SELF start"
      exit 1
      ;;
esac
