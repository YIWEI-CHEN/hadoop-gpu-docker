docker run -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" --privileged  -v /home/yiwei/opencl_runtime_driver/:/mnt --name gpu -h gpu.mycorp.kom -i -t yiwei1012/ubuntu-gpu:1.0 /bin/bash
