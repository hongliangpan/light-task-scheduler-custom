#!/usr/bin/env bash
sh bin/lts-admin.sh restart

sh bin/jobtracker.sh zoo restart

sh tasktracker/bin/tasktracker.sh stop

sh tasktracker/bin/tasktracker.sh start
