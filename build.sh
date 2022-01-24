#!/bin/bash

func() {
  echo "Usage:"
  echo "build.sh [-p port] [-g with_gpu = true|false] -n [img_name]"
  echo "Description:"
  echo "port, the web port to be exposed."
  echo "with_gpu, with_gpu weather to use gpu."
  echo "img_name "
  exit 1
}

while getopts 'p:g:n:' OPT; do
  case $OPT in
  p) port="$OPTARG" ;;
  g) with_gpu="$OPTARG" ;;
  n) img_name="$OPTARG" ;;
  ?) func ;;
  esac
done

if [ $with_gpu == "true" ]; then
  docker build -t ${img_name} --build-arg in_port=${port:=8500} -f ./Dockerfile.gpu .;
else
  docker build -t ${img_name} --build-arg in_port=${port:=8500} -f ./Dockerfile .;
fi
