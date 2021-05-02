#!/bin/bash
#
# Usage: `curl 'https://raw.githubusercontent.com/nathan-at-least/nixinst/main/nixinst.sh' | bash`

set -efuxo pipefail

curl -L https://nixos.org/nix/install > ./nixos.org-install.sh
sh -- ./nixos.org-install.sh --no-daemon
rm ./nixos.org-install.sh
source ~/.nix-profile/etc/profile.d/nix.sh
nix-env -i tmux vim git
