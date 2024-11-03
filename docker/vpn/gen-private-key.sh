#!/bin/bash

# use this script to convert the nordvpn token to a private key
# https://github.com/bubuntux/nordlynx?tab=readme-ov-file#how-to-get-your-private_key
NORDTOKEN=${NORDTOKEN:="get-this-from-environment"}

echo Using Token: ${NORDTOKEN}
sudo docker run --rm --cap-add=NET_ADMIN -e TOKEN="$NORDTOKEN" ghcr.io/bubuntux/nordvpn:get_private_key
