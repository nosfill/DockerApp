# DockerApp

This directory have Dockerfile for install application that needs build.
Base image is [Ubuntu](https://hub.docker.com/_/ubuntu):[bionic](https://github.com/tianon/docker-brew-ubuntu-core/blob/b5a2c2a86e9dc83ef3a21551ea97e351697ed2d7/bionic/Dockerfile).

The Docker image of the application I wanted to use was not available on Docher Hub, so I made one.

## List of application

|Application|Version|Command for build|
|:-:|:-:|:-|
|[Obfuscator-LLVM](https://github.com/obfuscator-llvm/obfuscator)|llvm-4.0|`docker build --force-rm=true --tag ollvm:1.0 --tag ollvm:latest obfuscator-llvm`|
|[Tigress](https://tigress.wtf/index.html)|v3.1|`docker build --force-rm=true --tag tigress:1.0 --tag tigress:latest tigress`|

> Tigress:  
> In this repository, binary that be needed for installation is ignored.  
> (Please download from [official homepage](https://tigress.wtf/index.html))
> Place the binary in tigress/resource
