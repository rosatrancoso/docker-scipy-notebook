# docker-scipy-notebook

Docker images inherited from [jupyter/scipy-notebook](https://github.com/jupyter/docker-stacks/blob/main/images/scipy-notebook/Dockerfile) with:

- my most used tools
- my AWS credentials
- external user for mounted volumes

More info in [docker-stacks notes](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html)

There's a GitHub Actions that builds and pushes the image to `ghcr.io/rosatrancoso/docker-scipy-notebook:master`.


## Example usage:

     export UID=`id -u`; export GID=`id -g`; docker compose up -d geoscipy


## Using VSCode

### from docker

you can use this docker image from VScode by connecting to remote host (e.g. https://localhost:8887) or

### from conda env

you can jupyter notebooks from VScode with a conda environment that has jupyter installed. It's actually easier than having this big docker image.






