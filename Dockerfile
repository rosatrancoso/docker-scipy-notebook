#FROM jupyter/scipy-notebook:6d42503c684f
FROM jupyter/minimal-notebook
LABEL maintainer="Rosa Trancoso <rosatrancoso@gmail.com>"

USER $NB_UID

RUN conda install --yes \
    cartopy \
    matplotlib==3.3.0 \
    netcdf4 \
    pandas==1.0.5 \
    scipy \
    xarray \
&&  conda clean --all -f -y

# Import matplotlib the first time to build the font cache.
ENV XDG_CACHE_HOME="/home/${NB_USER}/.cache/"

RUN MPLBACKEND=Agg \
&&  python -c "import matplotlib.pyplot" \
&&  fix-permissions "/home/${NB_USER}" \
&&  fix-permissions "${CONDA_DIR}"

WORKDIR $HOME
USER root


