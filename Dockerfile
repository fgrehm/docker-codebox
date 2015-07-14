FROM node:0.10
RUN npm install -g codebox \
    && npm cache clear
RUN apt-get update \
    && apt-get install net-tools -y --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
EXPOSE 8000
WORKDIR /workspace
CMD ["codebox", "run", "-n", "0.0.0.0", "-p", "8000", "."]
