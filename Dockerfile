FROM tensorflow/serving:latest-devel
ARG in_port
ENV port=$in_port

WORKDIR /models
COPY models ./
COPY models.conf ./
EXPOSE $port

CMD ["sh","-c","tensorflow_model_server --port=$port --model_config_file=/models/models.conf"]
