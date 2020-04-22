FROM jupyter/scipy-notebook
LABEL maintainer="Rosa Trancoso <rosatrancoso@gmail.com>"

USER root

RUN conda install --yes vim \
        wgrib2 wgrib netcdf4 \
        xarray cartopy s3fs \
        pygrib pynio cfgrib \
        cdo \
        geopandas descartes \
        mplleaflet folium &&\
    conda clean --all -f -y

RUN conda install --yes dash &&\
    pip install jupyter-plotly-dash &&\
    conda install --yes jupyter-server-proxy

# from mpl_toolkits.basemap import Basemap
RUN conda install -y basemap
# /opt/conda/share/proj
ENV PROJ_LIB="${CONDA_DIR}/share/proj"
RUN echo "PROJ_LIB = $PROJ_LIB"



