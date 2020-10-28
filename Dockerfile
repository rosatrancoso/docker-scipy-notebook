#FROM jupyter/scipy-notebook:6d42503c684f
FROM jupyter/minimal-notebook
LABEL maintainer="Rosa Trancoso <rosatrancoso@gmail.com>"

USER $NB_UID

RUN conda install --yes \
    matplotlib==3.3.0 \
    netcdf4 \
    pandas==1.0.5 \
    scipy \
    xarray \
&&  conda clean --all -f -y 



