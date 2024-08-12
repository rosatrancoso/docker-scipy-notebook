# docker-scipy-notebook

Docker images inherited from [jupyter/scipy-notebook](https://github.com/jupyter/docker-stacks/blob/main/images/scipy-notebook/Dockerfile) with:

- my most used tools
- my AWS credentials
- external user for mounted volumes

More info in [docker-stacks notes](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html)

## Example usage:

     export UID=`id -u`; export GID=`id -g`; docker compose up -d scipy_gis





