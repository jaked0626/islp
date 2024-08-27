#!/usr/bin/env bash

DATASET_NAME=${1}
DESTINATION_PATH=${2:-"."}

url="https://www.statlearning.com/s/${DATASET_NAME}"
redirected_url=$(curl -s -o /dev/null -w "%{url_effective}" -L "${url}")

curl "${redirected_url}" > "${DESTINATION_PATH%/}/${DATASET_NAME}";

