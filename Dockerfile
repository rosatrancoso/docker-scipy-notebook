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


