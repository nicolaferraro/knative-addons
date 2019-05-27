#!/bin/bash

oc apply -f operatorsource.yaml
oc apply -f camel-k-operatorsource.yaml