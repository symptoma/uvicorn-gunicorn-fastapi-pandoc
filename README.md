# Dockerfile to build an image for uvicorn-gunicorn-fastapi extended with pandoc (and wkhtmltopdf)

Based on [tiangolo/uvicorn-gunicorn-fastapi:python3.8](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker).

Extended with pandoc and wkhtmltopd 0.12.5 (with patched qt) and dependencies.

## Version

Current version of the base image is **0.6.0**: https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker/releases/tag/0.6.0

## Build

docker build -t symptoma/uvicorn-gunicorn-fastapi-pandoc .

## Publish

First, commit your change to Git. 

`git commit -m "Update Base Image to 0.6.0"`

Then tag it. 

`git tag -a 0.6.0 -m 'Release 0.6.0'`

Then push it to Github.

`git push && git push origin --tags`

Publishing manually works like this (after `docker login`):

```
docker tag f1aa123a520f symptoma/uvicorn-gunicorn-fastapi-pandoc:0.6.0
docker push symptoma/uvicorn-gunicorn-fastapi-pandoc:0.6.0
docker push symptoma/uvicorn-gunicorn-fastapi-pandoc:latest
```