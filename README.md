# DockerApp

This directory have Dockerfile for install application that needs build.
Base image is [Ubuntu](https://hub.docker.com/_/ubuntu):[bionic](https://github.com/tianon/docker-brew-ubuntu-core/blob/b5a2c2a86e9dc83ef3a21551ea97e351697ed2d7/bionic/Dockerfile).

The Docker image of the application I wanted to use was not available on Docher Hub, so I made one.

## List of application

|Application|Version|Dockerfile in this repository|
|:-:|:-:|:-|
|[Obfuscator-LLVM](https://github.com/obfuscator-llvm/obfuscator)|llvm-4.0|[dockerfile](./obfuscator-llvm/Dockerfile)|
|[Tigress](https://tigress.wtf/index.html)|v3.1|[dockerfile](./tigress/Dockerfile)|

## How to use

### Obfuscator-LLVM

1. Build image

    ```bash
    docker build --force-rm=true --tag ollvm:1.0 --tag ollvm:latest obfuscator-llvm
    ```

1. Run container as an executable file

    ```bash
    docker run --rm --mount type=bind,src=$(pwd),dst=/work ollvm [Option] [Path] 
    ```

### Tigress

> Note:  
> In this repository, binary that be needed for installation is ignored.  
> (Please download from [official homepage](https://tigress.wtf/index.html), then place the binary in tigress/resource)

1. Build image

    ```bash
    docker build --force-rm=true --tag tigress:1.0 --tag tigress:latest tigress
    ```

1. Run container as an executable file

    ```bash
    docker run --rm --mount type=bind,src=$(pwd),dst=/work tigress [Option] [Path] 
    ```
