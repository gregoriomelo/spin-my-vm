#!/bin/bash
# Usage: deploy.sh [host]

if [[ "$#" != 1 ]]; then
  echo "Usage: <user>@<host>"
  exit 1
fi

tar cj . | ssh -o 'StrictHostKeyChecking no' "$1" '
rm -rf ~/chef &&
mkdir ~/chef &&
cd ~/chef &&
tar xj &&
bash chefify.sh'

