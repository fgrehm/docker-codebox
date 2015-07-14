FROM node:0.10
RUN npm install -g codebox \
    && npm cache clean -g
EXPOSE 8000
WORKDIR /workspace
CMD ["codebox", "run", "-n", "0.0.0.0", "-p", "8000", "."]
