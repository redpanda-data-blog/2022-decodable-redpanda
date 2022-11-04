#!/bin/bash

set -ex

# Wait until Redpanda comes online
while [[ "$(curl -s redpanda:9644/v1/status/ready)" != "{\"status\":\"ready\"}" ]]; do sleep 5; done

python /app/clickstream_data_generator.py