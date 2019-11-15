FROM jupyter/scipy-notebook
LABEL maintainer="Rosa Trancoso <rosatrancoso@gmail.com>"

USER root

RUN conda install --yes vim \
        wgrib2 netcdf4 \
        xarray cartopy s3fs \
        pygrib pynio cfgrib &&\
    conda clean --all -f -y


