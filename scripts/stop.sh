#!/bin/sh
[[ -e /etc/systemd/system/helloworld.service ]] \
&& systemctl -q is-active helloworld.service \  
&& echo "Helloworld service is runnung" \
&& systemctl stop helloworld.service \
|| echo "Helloworld service is not running at all "
