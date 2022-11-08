FROM nvidia/cuda:11.2.0-cudnn8-devel-ubuntu20.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install python3 python3-pip -y
RUN pip3 install jupyterthemes notebook scikit-learn==1.0.1 pandas==1.1.5 matplotlib==3.2.2 seaborn==0.11.2 pillow tensorflow-gpu==2.9.2
RUN pip uninstall protobuf -y
RUN pip install --no-binary protobuf protobuf
RUN jt -t monokai
