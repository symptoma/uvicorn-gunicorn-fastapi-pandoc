# Dockerfile to build an image for uvicorn-gunicorn-fastapi extended with pandoc (and wkhtmltopdf)

Based on [tiangolo/uvicorn-gunicorn-fastapi:python3.10](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker).

Extended with pandoc and wkhtmltopdf 0.12.5 (with patched qt) and dependencies.

Published on the Docker Hub: https://hub.docker.com/r/symptoma/uvicorn-gunicorn-fastapi-pandoc

## Version

Current version of the base image is [**0.7.0**]((https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker/releases/tag/0.7.1)) and the one of this image is [**0.7.1**](https://github.com/symptoma/uvicorn-gunicorn-fastapi-pandoc/tags).

## Build
```
docker build -t symptoma/uvicorn-gunicorn-fastapi-pandoc .
```

## Publish

First, commit your change to Git. 

`git commit -m "Update Base Image to 0.7.0"`

Then tag it. 

`git tag -a 0.7.0 -m 'Release 0.7.0'`

Then push it to Github.

`git push && git push origin --tags`

Publishing manually works like this (after `docker login`):

```
docker tag symptoma/uvicorn-gunicorn-fastapi-pandoc:latest symptoma/uvicorn-gunicorn-fastapi-pandoc:0.7.0
docker push symptoma/uvicorn-gunicorn-fastapi-pandoc:0.7.0
docker push symptoma/uvicorn-gunicorn-fastapi-pandoc:latest
```

## Multi Architecture Docker Build

Prepare the buildx context and use it:

* `BUILDER_NAME=$(docker buildx create) && docker buildx use $BUILDER_NAME`

Then build for multiple platforms:

* `docker buildx build --push --platform linux/arm64,linux/amd64 --tag symptoma/uvicorn-gunicorn-fastapi-pandoc:0.7.0 .`
* `docker buildx build --push --platform linux/arm64,linux/amd64 --tag symptoma/uvicorn-gunicorn-fastapi-pandoc:latest .`