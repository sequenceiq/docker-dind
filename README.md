# Docker-in-Docker

This image helps you to test Docker with different versions, without
messing with you host system. It will set up a Docker container which
is able to run Docker inside.

## Quickstart

```
docker run -it --rm --privileged -e LOG=file sequenceiq/dind
```

It will start a Docker daemon i the background (unix:///var/run/docker.sock)
and provide a `bash` session where you can play with a vanilla docker
environment:
 - no images pulled
 - no containers

## Down/Upgrade Docker

Sometimes you want to check if something works with a specific Docker version.
There is a bash function ready to help you: `docker-set-version`. It will

- download the specified Docker binary, and symlink it.
- restart the Docker daemon.

## Bash Aliases

The usual Docker functions: `docker-kill-xxx`, `dps`, `dpsa` are all available
in bash. Its done by saving `j.mp/docker-functions` into `/tmp/docker-functions`
and its sourced from `/root/.bashrc`.
