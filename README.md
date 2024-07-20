# image-classification-tritonserver

The aim of this triton server is to provide imagenet model functionality.

## Download model

Download [model](https://drive.google.com/file/d/1LUetnezvb4W4L_A-tIvmPxp674x_n3ox/view?usp=sharing) and put the file to triton-repository/imagenet-classifier/1

```bash
python -m pip install gdown
cd triton-repository/imagenet-classifier/1
gdown 1LUetnezvb4W4L_A-tIvmPxp674x_n3ox
```

## Build

```bash
docker build . -t image-classification-tritonserver:v1
```

or pull

```bash
docker pull yashenkoxciv/image-classification-tritonserver:latest
```

## Run

```bash
docker network create -d bridge image-classification-net
docker run \
    --name image-classification-tritonserver \
    --rm -p 8000:8000 -p 8001:8001 -p 8002:8002 \ 
    --network=image-classification-net \
    image-classification-tritonserver:v1
```

```bash
docker network create -d bridge image-classification-net
docker run \
    --name image-classification-tritonserver \
    --rm -p 8000:8000 -p 8001:8001 -p 8002:8002 \ 
    --network=image-classification-net \
    yashenkoxciv/image-classification-tritonserver:latest
```

