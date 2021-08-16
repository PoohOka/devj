FROM node:10-alpine

RUN apk add --no-cache git

ARG BACKEND_HOST
ARG BACKEND_LOGO
ARG BACKEND_USER_UNLOCK
ARG BACKEND_USER_REFRESH

ENV REPLACE_OS_VARS=true \
    TERM=xterm \
    LANG=C.UTF-8 \
    BACKEND_HOST=${BACKEND_HOST} \
    BACKEND_LOGO=${BACKEND_LOGO} \
    BACKEND_USER_UNLOCK=${BACKEND_USER_UNLOCK} \
    BACKEND_USER_REFRESH=${BACKEND_USER_REFRESH} 

RUN echo "******************************************************************************************"; \
  env; \
  echo "******************************************************************************************"
