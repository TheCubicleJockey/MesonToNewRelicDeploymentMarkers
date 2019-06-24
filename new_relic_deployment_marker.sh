#!/bin/bash -x

if [[ -n "$NEW_RELIC_APP_ID" && -n "$NEW_RELIC_KEY" && -n "$MARATHON_APP_VERSION" && -n "$STAGE" ]]; then
  curl --silent --output /dev/null \
       -X POST "https://api.newrelic.com/v2/applications/${NEW_RELIC_APP_ID}/deployments.json" \
       -H "X-Api-Key:${NEW_RELIC_KEY}" -i \
       -H 'Content-Type: application/json' \
       -d \
       "{
          \"deployment\": {
          \"MARATHON_APP_VERSION\": \"${MARATHON_APP_VERSION}\",
          \"description\": \"${STAGE} deployment\"
          }
        }" |:;
fi
