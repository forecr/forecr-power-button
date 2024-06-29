#!/bin/bash
LOG_FILE='/var/log/poweroff.log'
#touch $LOG_FILE && chmod 0666 $LOG_FILE
touch $LOG_FILE && chmod a=rw $LOG_FILE
echo "$(date '+%Y.%m.%d %H:%M:%S.%3N'): poweroff button pressed, event: $1" >> $LOG_FILE
sudo busybox devmem 0x0c2f1080 32 0x000000ED
