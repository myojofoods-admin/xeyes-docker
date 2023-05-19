FROM ubuntu:latest

ARG DOCKER_UID=1000
ARG DOCKER_USER=docker

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    x11-apps \
    mesa-utils \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

RUN useradd -m --uid ${DOCKER_UID} ${DOCKER_USER}
USER ${DOCKER_USER}

ENV HOME=/home/${DOCKER_USER}
ENV SHELL=/bin/bash
WORKDIR ${HOME}

CMD ["xeyes"]