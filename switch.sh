#!/bin/bash

curl \
  -X POST \
  -u "marcel-dias:$GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/marcel-dias/gha-tests/dispatches" \
  -d '{"event_type":"event_type"}'



curl \
  -X PUT \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/marcel-dias/gha-tests/actions/secrets/MERGES_ENABLED \
  -d '{"encrypted_value":"false"}'

curl \
  -u "marcel-dias:$GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/marcel-dias/gha-tests/actions/secrets/MERGES_ENABLED