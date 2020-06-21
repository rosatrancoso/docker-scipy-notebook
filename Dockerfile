FROM jupyter/scipy-notebook:1e36f7c13193
LABEL maintainer="Rosa Trancoso <rosatrancoso@gmail.com>"

USER root

RUN conda install -y \
        vim \
        wgrib2 wgrib netcdf4 \
        xarray cartopy s3fs \
        pygrib pynio cfgrib \
        cdo \
        geopandas descartes \
        mplleaflet folium
    #     &&\
    # conda clean --all -f -y

## Dash applications ##
RUN conda install --yes dash &&\
    pip install jupyter-plotly-dash &&\
    conda install --yes jupyter-server-proxy

# from mpl_toolkits.basemap import Basemap
RUN conda install -y basemap
# /opt/conda/share/proj
ENV PROJ_LIB="${CONDA_DIR}/share/proj"
RUN echo "PROJ_LIB = $PROJ_LIB"

## stuff to compile hysplit ##
RUN conda install -y \
    fortran-compiler \
    netcdf-fortran \
    dos2unix \
    cfunits

# xarray with georeferencing
# RUN conda install -y salem