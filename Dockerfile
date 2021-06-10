FROM python:3.9-alpine3.13
ARG grpcio_version

RUN apk add g++ linux-headers

RUN apk add g++ linux-headers && \
    echo 'manylinux1_compatible = True' > /usr/local/lib/python3.9/site-packages/_manylinux.py && \
		pip3 install --no-cache-dir grpcio==$grpcio_version

