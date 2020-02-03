#!/bin/bash
set -x
docker run -it --privileged --rm --name five -e LED=5 zoobab/glar
