GPUOPTS="-e DISPLAY=unix:0.0 -v=/tmp/.X11-unix:/tmp/.X11-unix:rw --privileged"
docker run $GPUOPTS -v /home/yiwei/opencl_runtime_driver:/mnt --name base -h base.mycorp.kom -i -t yiwei1012/hadoop-gpu-base:1.2 /bin/bash
