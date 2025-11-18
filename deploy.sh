#!/usr/bin/env bash
set -euo pipefail
ENV=${1:-staging}

echo "Uploading ${ARTIFACT} to S3 for ${ENV}"
