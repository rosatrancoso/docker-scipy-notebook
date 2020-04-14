
# docker-scipy-notebook

Docker image inherited from [jupyter/scipy-notebook](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook) with my most used tools


1. Build

    `docker build -t rosatrancoso/scipy-notebook .`

2. Push

    `docker push rosatrancoso/scipy-notebook`

3. Run

    ```export UID=`id -u`; export GID=`id -g`; docker-compose up -d```
    
    Small change2






