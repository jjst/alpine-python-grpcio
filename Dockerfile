FROM python:3.9-alpine3.13

# Use specific alpine-packaged grpcio from edge
RUN apk add g++ linux-headers py3-grpcio=1.30.0-r1 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
