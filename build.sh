#!/bin/bash

set -euxo pipefail

dnf -y install syncthing python3-py-bcrypt

mkdir -p /home/syncthing/.config/syncthing

dnf clean all
