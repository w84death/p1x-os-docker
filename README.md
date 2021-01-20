# P1X/OS Docker

Super slim linux distribution run on docker. Interaction via noVNC web client.

## Build
```
 docker build -t p1x/os .
```

## Run
```
docker run -d \
    -p 8080:8080 \
    --restart always \
    p1x/os
```
