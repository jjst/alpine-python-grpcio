# Docker images with precompiled grpcio for Python

You're using your super slim Alpine-based Python image when suddenly `grpcio` crawls into your `requirements.txt` unexpectedly. 

Your docker build which used to take a few seconds now takes a good ten minutes, as your build machine struggles to build the damn thing from source. If you even remembered to include the c++ toolchain and linux headers in the first place.

Or alternatively, you can use one of these docker images with grpcio precompiled. Up to you! :)

## Installation

```
docker pull jjst/alpine-python-grpcio:3.13-python<python-version>-grpcio<grpcio-version>
```
Replace `<python-version>` and `<grpcio-version>` with what's appropriate for you. you can also browse the existing docker image tags on [dockerhub](https://hub.docker.com/r/jjst/alpine-python-grpcio/tags).

## Supported versions

### Alpine

- 3.13

If you need another Alpine version, open an issue, I'll add it.

### Python

- 3.8
- 3.9

### grpcio

The 10 latest non-RC versions [published on PyPI](https://pypi.org/project/grpcio/) at any given time are supported. 
When a new version gets published, new corresponding images should get published automatically within a day. 
