#!/usr/bin/env bash

docker build -f Dockerfile.build -t zobees/mvdsv-build .
bid=$(docker create zobees/mvdsv-build)
docker cp $bid:/usr/local/src/mvdsv/build/make/mvdsv files/mvdsv
docker cp $bid:/usr/local/src/mvdsv/LICENSE files/LICENSE
docker rm $bid
docker build -f Dockerfile -t zobees/mvdsv .
