#!/bin/bash
#
# Usage: `curl 'https://raw.githubusercontent.com/nathan-at-least/nixinst/main/nixinst.sh' | bash`

set -efuxo pipefail

curl -L https://nixos.org/nix/install | sh -- --no-daemon
nix-env -i tmux vim git
