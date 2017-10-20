#!/bin/bash

set -e

VERSION="$1"
IMAGE="$2"

set -x

ls -l $HOME/.config/kubernaut
sum $HOME/.config/kubernaut/config.json
echo "$KUBERNAUT_ID" > $HOME/.config/kubernaut/id

kubernaut claim 
export KUBECONFIG=${HOME}/.kube/kubernaut

./kubectl cluster-info

kubernaut discard

exit 0
