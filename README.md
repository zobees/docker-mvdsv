# mvdsv

A dockerized [mvdsv](https://github.com/deurk/mvdsv) QuakeWorld server.  Does nothing on its own as it's intended as a base image for other QuakeWorld servers.

## Instructions

The image contains a 32bit version of the mvdsv binary in `/qw` and libc6-i386 necessary to run it.  Simply extend this image to add your own directories around it, such as `id1` and `qw`, and your configuration files and scripts to run your server.

The enviroment variable `QW_DIR` is also set so that your scripts don't have to figure out where things are.

## Building mvdsv

The [Github repository](https://github.com/zobees/docker-mvdsv) for this image also contains an image that builds the mvdsv binary and an associated Makefile to make things a bit easier.  Should you wish to customize the build process or tinker with the way mvdsv is built, you should start there.