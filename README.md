# docker-codebox

[Codebox IDE](https://github.com/CodeboxIDE/codebox) in a container.

```sh
docker run -ti \
           -p 8080:80 \
           -v `pwd`:/workspace \
           fgrehm/codebox
```
