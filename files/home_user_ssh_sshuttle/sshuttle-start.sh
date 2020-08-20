#!/usr/bin/env bash

/usr/sbin/sshuttle --daemon --pidfile sshuttle.pid --syslog -l 0.0.0.0 -r $1 0.0.0.0/0 -vv --dns
