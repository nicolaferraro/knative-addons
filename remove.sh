#!/bin/bash

oc delete operatorsource knative-camel-addon -n openshift-marketplace
oc delete operatorsource camel-k-2 -n openshift-marketplace