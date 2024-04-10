# Description

nginx docker configuration for serving static contente from 2 different locations.
if the file is not found in the first location, it will be served from the second location.


# Create Docker Image

run the following command from the root directory of the project


```
docker build . -t nginx-docker (or a name of your choice)

```


# Run Docker Container

```
docker run -p 80:80 -e BACKEND=localhost -e PORT=8080 -e USERNAME=user -e PASSWORD=pass nginx-docker

```
