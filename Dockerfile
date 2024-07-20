FROM nvcr.io/nvidia/tritonserver:22.09-py3

EXPOSE 8000
EXPOSE 8001
EXPOSE 8002

COPY triton-repository/ /models

CMD [ "tritonserver", "--model-repository=/models" ]
