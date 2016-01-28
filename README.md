[docker-nxt](https://registry.hub.docker.com/u/damoun/nxt/) [![License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](/LICENSE) [![Docker Pulls](https://img.shields.io/docker/pulls/damoun/nxt.svg)](https://registry.hub.docker.com/u/damoun/nxt/) [![ImageLayers](https://badge.imagelayers.io/damoun/nxt:latest.svg)](https://imagelayers.io/?images=damoun/nxt:latest)
====================

[NXT](http://nxt.org/) client container definition for docker.

## Quickstart

To build this image run

```sh
docker build -t tangleNinja/nxt:1.7.5 .
```

in the same directory where the Dockerfile is located.


To run NXT inside docker, run the following command :

```sh
docker run -dt -p 7876:7876 -p 7874:7874 tangleNinja/nxt:1.7.5
```

Port 7876 is needed for API ( GUI )

Port 7874 is NXT's P2P port.
