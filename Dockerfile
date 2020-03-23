# syntax=docker/dockerfile:1.0.0-experimental
FROM continuumio/miniconda3

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV HOME=/root
WORKDIR $HOME

COPY notebooks/ $HOME/notebooks/
COPY requirements.txt $HOME/requirements.txt

RUN apt-get update && apt-get -y install gcc
RUN pip install --upgrade -r requirements.txt
