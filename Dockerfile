FROM tensorflow/serving:latest-devel
ARG port
ENV port=$port

WORKDIR /
COPY models ./
COPY models.conf ./
EXPOSE $port

CMD ["sh","-c","tensorflow_model_server --port=$port --model_config_file=/models.conf"]
