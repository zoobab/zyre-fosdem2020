#!/bin/bash
set -x
docker run -it --privileged --rm --name controller --entrypoint='/bin/bash' zoobab/glar
