#!/bin/bash
GPUOPTS="-e DISPLAY=unix:0.0 -v=/tmp/.X11-unix:/tmp/.X11-unix:rw --privileged"
docker run $GPUOPTS -d -t --dns 127.0.0.1 -e NODE_TYPE=s  -P --name slave3 -h slave3.mycorp.kom yiwei1012/hadoop-gpu-dn:1.2
