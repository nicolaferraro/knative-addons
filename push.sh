#!/bin/bash

export AUTH_TOKEN=$(curl -sH "Content-Type: application/json" -XPOST https://quay.io/cnr/api/v1/users/login -d '{"user": {"username": "'"${QUAY_USERNAME}"'", "password": "'"${QUAY_PASSWORD}"'"}}' | jq -r '.token')

operator-courier --verbose push manifests/knative-camel-addon/ nferraro knative-camel-addon 0.6.0 "$AUTH_TOKEN"
operator-courier --verbose push manifests/camel-k-2/ nferraro camel-k-2 0.3.3 "$AUTH_TOKEN"
