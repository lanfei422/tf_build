#!/bin/bash

func() {
  echo "Usage:"
  echo "build.sh [-p port] [-g with_gpu = true|false]"
  echo "Description:"
  echo "port, the web port to be exposed."
  echo "with_gpu, with_gpu weather to use gpu."
  exit 1
}

while getopts 'p:g:' OPT; do
  case $OPT in
  p) port="$OPTARG" ;;
  g) with_gpu="$OPTARG" ;;
  ?) func ;;
  esac
done

if [ $with_gpu == "true" ]; then
  docker build -t --build-arg web_port=${port} -f ./Dockerfile.gpu .;
else
  docker build -t --build-arg web_port=${port} -f ./Dockerfile .;
fi
