#!/bin/bash
set -x
docker run -it --privileged --rm --name three -e LED=3 zoobab/glar
