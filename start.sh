#!/bin/bash
echo "Starting Daemon"
storjshare daemon
echo "Starting Node"
storjshare start -c /home/storj/configs/conf.json
tail -f home/storj/.config/storjshare/logs/daemon.log