#!/bin/bash

nohup /start-packetbeat.sh &>/var/log/packetbeat.log &

exec "$@"
