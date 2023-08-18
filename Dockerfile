FROM nvidia/cuda:11.2.0-cudnn8-devel-ubuntu20.04
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Asia/Hong_Kong
ENV TZ=${TZ}

RUN apt-get update && apt-get install python3 python3-pip wget -y
RUN pip3 install notebook jupyterlab \
    scikit-learn==1.0.1 \
    pandas==1.1.5 \
    matplotlib==3.2.2 \
    seaborn==0.11.2 \
    pillow \
    tensorflow-gpu==2.9.2 \
    gdown
RUN pip uninstall protobuf -y
RUN pip install --no-binary protobuf protobuf

ARG USERNAME
ARG USER_ID
ARG GROUP_ID

RUN groupadd --gid ${GROUP_ID} ${USERNAME} && \
    adduser --disabled-password --gecos '' --uid ${USER_ID} --gid ${GROUP_ID} ${USERNAME}
USER ${USERNAME}
WORKDIR /home/${USERNAME}/app
