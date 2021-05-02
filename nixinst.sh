#!/bin/sh
#
# Usage: `curl <url> | sh`

set -efuxo pipefail

curl -L https://nixos.org/nix/install | sh --no-daemon
nix-env -i tmux vim git
