#!/bin/bash
# Usage: deploy.sh [host]

host="${1:-root@198.199.65.56}"

tar cj . | ssh -o 'StrictHostKeyChecking no' "$host" '
rm -rf ~/chef &&
mkdir ~/chef &&
cd ~/chef &&
tar xj &&
bash chefify.sh'

