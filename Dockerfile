# following the scipy-notebook dockerfile

# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html
# https://github.com/jupyter/docker-stacks/blob/main/images/scipy-notebook/Dockerfile
# wrfpy needs python 3.11.10
FROM quay.io/jupyter/scipy-notebook:python-3.11.10
LABEL org.opencontainers.image.authors="rosatrancoso@gmail.com"

ADD requirements.yml /tmp/requirements.yml
RUN mamba env update --name base --file /tmp/requirements.yml
