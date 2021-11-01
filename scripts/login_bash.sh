#!/bin/bash

# 1st Argument: docker image name

CMD="docker run --rm  -it --entrypoint /bin/bash --mount type=bind,src=$(pwd),dst=/work ${1}"
${CMD}
