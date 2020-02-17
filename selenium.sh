#!/bin/bash
### BEGIN INIT INFO
# Provides:          scriptname
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
## END INIT INFO

#Xvfb :10 -screen 5 1920x5200x8 -ac </dev/null >/dev/null 2>&1 &
#export DISPLAY=:10.5

cd /var/www/html/IODS6/selenium && nohup java -Dwebdriver.gecko.drive -Dwebdriver.chrome.drive -jar selenium-server-standalone-3.141.59.jar -port xxxx </dev/null >/dev/null 2>&1 &

