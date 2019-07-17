FROM jupyter/scipy-notebook
LABEL maintainer="Rosa Trancoso <rosatrancoso@gmail.com>"

USER root

RUN conda install --yes vim wgrib2 \
        xarray cartopy s3fs \
        pynio cfgrib &&\
    conda clean --all -f -y


