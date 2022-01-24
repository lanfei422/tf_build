# tf_build
### tf serving自动化打包dockerfile
### 首先自行copymodel文件到models目录下
### 然后撰写自己的model.conf文件
### 接着执行build.sh [-p port] [-g with_gpu = true|false] -n [img_name]
### p指定端口，g如果是true就会基于tfserving gpu镜像打，否则是cpu， n是对应的镜像名称，可加“：”指定tag eg:tf_serving_eg:1.0,
### 此项目可以作为tf serving打包的脚手架。
