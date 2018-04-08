#!/bin/bash

set -euxo pipefail

dnf -y install syncthing py-bcrypt

mkdir -p /home/syncthing/.config/syncthing

dnf clean all
