#!/bin/bash
echo "Starting Daemon"
storjshare daemon
echo "Starting Node"
storjshare start -c /home/storj/configs/conf.json
cd /home/storj
storjshare status | awk '{print $2}' | grep  '^[a-z0-9]*$' | xargs > nodeid
storjshare logs -i "$(cat nodeid)"