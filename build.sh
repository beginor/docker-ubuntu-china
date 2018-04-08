#!/bin/bash
export IMG=beginor/ubuntu-china:16.04
docker build --no-cache --rm -t $IMG .
docker run --rm --interactive --tty $IMG /bin/bash
