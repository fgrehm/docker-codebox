FROM gliderlabs/alpine:3.2
RUN echo '@alpine-3.1 http://dl-3.alpinelinux.org/alpine/v3.1/main' >> /etc/apk/repositories \
    && apk-install nodejs@alpine-3.1 nodejs-dev@alpine-3.1 \
    && apk-install git python make build-base \
    && npm install -g codebox \
    && npm cache clean -g
EXPOSE 8000
WORKDIR /workspace
CMD ["codebox", "run", "-n", "0.0.0.0", "-p", "8000", "."]
