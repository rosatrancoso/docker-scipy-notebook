#FROM jupyter/scipy-notebook:6d42503c684f
FROM jupyter/scipy-notebook
LABEL maintainer="Rosa Trancoso <rosatrancoso@gmail.com>"

USER root

RUN time conda install -y \
        vim boto3 s3fs \
        netcdf4  pandas==1.0.5 \
        xarray cartopy \
        geopandas descartes \
        mplleaflet folium \
        # grib stuff
        wgrib2 wgrib \
        pygrib pynio cfgrib \
        cdo \
        # stuff to compile hysplit ##
        fortran-compiler \
        netcdf-fortran \
        dos2unix \
        cfunits  \
&&      conda clean -y --all -f

# # from mpl_toolkits.basemap import Basemap
# RUN time conda install -y basemap
# /opt/conda/share/proj
ENV PROJ_LIB="${CONDA_DIR}/share/proj"
RUN echo "PROJ_LIB = $PROJ_LIB"


## Dash applications ##
# RUN conda install --yes dash &&\
#     pip install jupyter-plotly-dash &&\
#     conda install --yes jupyter-server-proxy

# xarray with georeferencing
# RUN conda install -y salem
