#!/bin/bash

MERGES_ENABLED="$1"

if [ "$MERGES_ENABLED" == "true" ]; then
    echo "Merges to master are enabled"
    exit 0
else
    echo "Merges to master are not enabled"
    exit 1
fi