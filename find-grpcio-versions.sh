#!/bin/bash

set -o errexit

curl -q -s https://pypi.org/rss/project/grpcio/releases.xml | xpath -e "/rss/channel/item/title/text()" -q  | grep -ve rc | head -n 15 | jq -R '.' | jq -s -c '.'

