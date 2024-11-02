#!/bin/bash

until packetbeat -c /etc/packetbeat/packetbeat.yml -e setup; do
	sleep 5
done

nohup packetbeat -c /etc/packetbeat/packetbeat.yml run &
