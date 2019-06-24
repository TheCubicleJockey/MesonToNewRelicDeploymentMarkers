# MesonToNewRelicDeploymentMarkers
Deploying from Mesos, use this to get deployment markers to show up in New Relic. This script must run on deploment, and/or if prefered even when scaling.

Add the below environment varribles to you Mesos
- NEW_RELIC_APP_ID
- NEW_RELIC_KEY
- MARATHON_APP_VERSION
- STAGE
