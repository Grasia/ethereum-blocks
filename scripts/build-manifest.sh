#!/bin/bash

NETWORK=$1

if [ $NETWORK = "arbitrum" ]; then
  NETWORK="arbitrum-one"
fi

sed 's/{{network}}/'"$NETWORK"'/' subgraph.template.yaml > subgraph.yaml
