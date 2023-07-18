# Dockerize Xeyes

Validate running a linux native GUI application in a docker container.

## Build

```sh
docker build -t xeyes .
```

## Run

```sh
xhost +local:docker
```

```sh
docker run --rm -it \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    xeyes
```

## Licenses

Licensed under either [Apache 2.0](http://opensource.org/licenses/MIT) or [MIT](http://opensource.org/licenses/MIT) at your option.