#!/usr/bin/env bash
#
# Start the docker server without exposing a web-port.
#

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
sudo docker container stop badkan
source $DIR/docker_without_web.sh
