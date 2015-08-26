containerId=` docker ps | grep "gpu-java" | sed "s/ \{3,\}/#/g" | cut -d'#' -f1 `
docker commit -m="container was installed AMD 15.101 driver and AMD APPSDK 3.0" -a="YIWEI-CHEN <feberium@gmail.com>" $containerId yiwei1012/gpu-java:2.0
